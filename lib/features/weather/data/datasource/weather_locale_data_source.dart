import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather/core/utils/capital_latter.dart';
import 'package:weather/features/weather/data/models/city_model.dart';
import 'package:weather/features/weather/data/models/weather_model.dart';

abstract class WeatherLocalDataSource {
  Future<List<dynamic>> getCacheCities();
  Future<dynamic> getLastWeatherByCityInfo(String city);
  Future<void> cacheRegisterCity(CityModels userModels);
  Future<void> cacheWeatherByCityInfo(WeathersModels weathersModels);
}

class WeatherLocalDataSourceImpl implements WeatherLocalDataSource {
  WeatherLocalDataSourceImpl();

  @override
  Future<void> cacheRegisterCity(CityModels userModels) async {
    final citiesBox = await Hive.openBox('cities');
    citiesBox.add(userModels);
  }

  @override
  Future<List<dynamic>> getCacheCities() async {
    final citiesBox = await Hive.openBox('cities');

    return citiesBox.values.toList();
  }

  @override
  Future<void> cacheWeatherByCityInfo(WeathersModels weathersModels) async {
    final weatherCityBox = await Hive.openBox('weatherCity');

    weatherCityBox.add(weathersModels);
  }

  @override
  Future<dynamic> getLastWeatherByCityInfo(String city) async {
    final weatherCityBox = await Hive.openBox('weatherCity');
    return weatherCityBox.values.firstWhere(
      (element) => element.name == city.toUpperCaseFirst(),
      orElse: () => null,
    );
  }
}
