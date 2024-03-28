import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/features/weather/domain/repository/weather_repository.dart';

class RegisterCityUseCases {
  final  WeatherRepository weatherRepository;

  RegisterCityUseCases(this.weatherRepository,);

  Future<Result<bool>> registerCity(
    String city,
  ) async =>
       weatherRepository.registerCity(city);
}