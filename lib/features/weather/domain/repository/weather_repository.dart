import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/features/weather/domain/entity/user_entity.dart';

abstract class WeatherRepository {
  Future<Result<bool>> registerCity(
    String city,
  );

  Future<Result<List<UserEntity>>> getcityList(
  );
}