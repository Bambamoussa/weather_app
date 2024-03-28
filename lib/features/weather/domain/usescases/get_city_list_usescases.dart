import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/features/weather/domain/entity/user_entity.dart';
import 'package:weather/features/weather/domain/repository/weather_repository.dart';

class GetCityListUseCases {
  final WeatherRepository weatherRepository;

  GetCityListUseCases(
    this.weatherRepository,
  );

  Future<Result<List<UserEntity>>> getCityList() async =>
      weatherRepository.getcityList();
}
