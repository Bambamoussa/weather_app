import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:weather/core/data/repository/base_repository.dart';
import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/core/network/network_info.dart';
import 'package:weather/features/weather/data/datasource/weather_remote_data_source.dart';
import 'package:weather/features/weather/data/models/user_model.dart';
import 'package:weather/features/weather/data/models/weather_model.dart';
import 'package:weather/features/weather/domain/entity/user_entity.dart';
import 'package:weather/features/weather/domain/entity/weather_entity.dart';
import 'package:weather/features/weather/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository with BaseRepository {
  WeatherRepositoryImpl({
    required this.networkInfo,
    required this.weatherRemoteDataSource,
  });

  final firebaseAuth = FirebaseAuth.instance;
  final firebaseStore = FirebaseFirestore.instance;
  final NetworkInfo networkInfo;
  final WeatherRemoteDataSource weatherRemoteDataSource;

  @override
  Future<Result<bool>> registerCity(String city) async {
    if (!await networkInfo.isConnected) {
      return const Result.failure(
        Failure.offline(),
      );
    }
    try {
      firebaseStore.collection("users").doc().set({
        'id': firebaseAuth.currentUser?.uid,
        'city': city,
      });

      return const Result.success(true);
    } on Exception catch (e) {
      return Result.failure(
        dispatchException(e),
      );
    }
  }

  @override
  Future<Result<List<UserEntity>>> getcityList() async {
    if (!await networkInfo.isConnected) {
      return const Result.failure(
        Failure.offline(),
      );
    }
    try {
      final user = await firebaseStore
          .collection('users')
          .where('id', isEqualTo: firebaseAuth.currentUser?.uid)
          .get();

      final userList = user.docs
          .map(
            (user) => UserModels.fromSnapshot(user).toDomain(),
          )
          .toList();
      return Result.success(userList);
    } on Exception catch (e) {
      return Result.failure(
        dispatchException(e),
      );
    }
  }

  @override
  Future<Result<WeatherEntity>> getWeatherByLocation(String location) async {
    if (!await networkInfo.isConnected) {
      return const Result.failure(
        Failure.offline(),
      );
    }
    try {
      final weatherResponse =
          await weatherRemoteDataSource.getWeatherByLocation(location);

      final weather = WeathersModels.fromJson(weatherResponse).toDomain();
      return Result.success(weather);
    } on Exception catch (e) {
      return Result.failure(
        dispatchException(e),
      );
    }
  }
}
