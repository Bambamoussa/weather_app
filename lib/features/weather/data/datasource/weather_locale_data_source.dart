import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather/core/utils/capital_latter.dart';
import 'package:weather/features/weather/data/models/user_model.dart';
import 'package:weather/features/weather/data/models/weather_model.dart';

abstract class WeatherLocalDataSource {
  Future<List<dynamic>> getLastUserCityInfo();
  Future<dynamic> getLastWeatherByCityInfo(String city);
  Future<void> cacheUserCityInfo(UserModels userModels);
  Future<void> cacheWeatherByCityInfo(WeathersModels weathersModels);
}

class WeatherLocalDataSourceImpl implements WeatherLocalDataSource {
  WeatherLocalDataSourceImpl();

  @override
  Future<void> cacheUserCityInfo(UserModels userModels) async {
    final myBox = await Hive.openBox('userCity');
    myBox.add(userModels);
  }

  @override
  Future<List<dynamic>> getLastUserCityInfo() async {
    final myBox = await Hive.openBox('userCity');

    return myBox.values.toList();
  }

  @override
  Future<void> cacheWeatherByCityInfo(WeathersModels weathersModels) async {
    final myBox1 = await Hive.openBox('weatherCity');

    myBox1.add(weathersModels);
  }

  @override
  Future<dynamic> getLastWeatherByCityInfo(String city) async {
    final myBox1 = await Hive.openBox('weatherCity');
    return myBox1.values.firstWhere(
      (element) => element.name == city.toUpperCaseFirst(),
      orElse: () => null,
    );
  }
}
