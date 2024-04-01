import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:weather/core/data/repository/base_repository.dart';
import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/core/error/exception.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/core/network/network_info.dart';
import 'package:weather/features/weather/data/datasource/weather_locale_data_source.dart';
import 'package:weather/features/weather/data/datasource/weather_remote_data_source.dart';
import 'package:weather/features/weather/data/models/city_model.dart';
import 'package:weather/features/weather/data/models/weather_model.dart';
import 'package:weather/features/weather/domain/entity/main_weather_entity.dart';
import 'package:weather/features/weather/domain/entity/city_entity.dart';
import 'package:weather/features/weather/domain/entity/weather_entity.dart';
import 'package:weather/features/weather/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository with BaseRepository {
  WeatherRepositoryImpl({
    required this.networkInfo,
    required this.weatherRemoteDataSource,
    required this.firebaseAuth,
    required this.firebaseStore,
    required this.weatherLocalDataSource,
  });

  final NetworkInfo networkInfo;
  final WeatherRemoteDataSource weatherRemoteDataSource;
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseStore;
  final WeatherLocalDataSource weatherLocalDataSource;

  @override
  Future<Result<bool>> registerCity(String city) async {
    //is Not Connected
    if (!await networkInfo.isConnected) {
      return const Result.failure(
        Failure.offline(),
      );
    }

    //isConnected
    try {
      firebaseStore.collection("cities").doc().set({
        'id': firebaseAuth.currentUser?.uid,
        'city': city,
      });

      weatherLocalDataSource.cacheRegisterCity(
        CityModels(
          id: firebaseAuth.currentUser?.uid ?? '',
          city: city,
        ),
      );
      return const Result.success(true);
    } on Exception catch (e) {
      return Result.failure(
        dispatchException(e),
      );
    }
  }

  @override
  Future<Result<List<CityEntity>>> getcityList() async {
    //is Not Connected
    if (!await networkInfo.isConnected) {
      try {
        final weatherLocalData = await weatherLocalDataSource.getCacheCities();

        final cities = List<CityEntity>.from(
          weatherLocalData.map(
            (city) => CityEntity(
              id: city.id,
              city: city.city,
            ),
          ),
        );
        return Result.success(cities);
      } on CacheException {
        return const Result.failure(
          Failure.cache(),
        );
      }
    }

    //isConnected
    try {
      final citiesCollection = await firebaseStore
          .collection('cities')
          .where(
            'id',
            isEqualTo: firebaseAuth.currentUser?.uid,
          )
          .get();

      final citiesEntity = citiesCollection.docs
          .map(
            (user) => CityModels.fromSnapshot(user).toDomain(),
          )
          .toList();
      return Result.success(citiesEntity);
    } on Exception catch (e) {
      return Result.failure(
        dispatchException(e),
      );
    }
  }

  @override
  Future<Result<WeatherEntity>> getWeatherByLocation(String location) async {
    //is Not Connected
    if (!await networkInfo.isConnected) {
      try {
        final weatherLocalData =
            await weatherLocalDataSource.getLastWeatherByCityInfo(location);
        if (weatherLocalData != null) {
          final mainWeather = weatherLocalData.mainWeathersModels;
          final weatherCity = WeatherEntity(
            name: weatherLocalData.name,
            mainWeatherEntity: MainWeatherEntity(
              feelsLike: mainWeather.feelsLike,
              temperature: mainWeather.temperature,
              pressure: mainWeather.pressure,
              humidity: mainWeather.humidity,
            ),
          );
          return Result.success(weatherCity);
        } else {
          return const Result.failure(
            Failure.cache(),
          );
        }
      } on CacheException {
        return const Result.failure(
          Failure.cache(),
        );
      }
    }

    //isConnected
    try {
      final weatherResponse =
          await weatherRemoteDataSource.getWeatherByLocation(location);
      final weathersModels = WeathersModels.fromJson(weatherResponse);

      weatherLocalDataSource.cacheWeatherByCityInfo(
        WeathersModels(
          name: weathersModels.name,
          mainWeathersModels: weathersModels.mainWeathersModels,
        ),
      );
      final weather = weathersModels.toDomain();

      return Result.success(weather);
    } on Exception catch (e) {
      return Result.failure(
        dispatchException(e),
      );
    }
  }
}
