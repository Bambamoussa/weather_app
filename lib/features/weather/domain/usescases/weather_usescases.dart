import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/features/weather/domain/entity/weather_entity.dart';
import 'package:weather/features/weather/domain/repository/weather_repository.dart';

class WeatherUseCases {
  final  WeatherRepository weatherRepository;
  WeatherUseCases(this.weatherRepository);
  Future<Result<WeatherEntity>> getweatherByLocation(String location) async => weatherRepository.getWeatherByLocation(location);
 }