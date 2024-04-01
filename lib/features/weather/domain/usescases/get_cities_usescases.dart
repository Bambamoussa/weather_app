import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/features/weather/domain/entity/city_entity.dart';
import 'package:weather/features/weather/domain/repository/weather_repository.dart';

class GetCitiesUseCases {
  final WeatherRepository weatherRepository;

  GetCitiesUseCases(
    this.weatherRepository,
  );

  Future<Result<List<CityEntity>>> getCityList() async =>
      weatherRepository.getcityList();
}
