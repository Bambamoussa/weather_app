import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/domain/entity/main_weather_entity.dart';
part 'weather_entity.freezed.dart';

@freezed
class WeatherEntity with _$WeatherEntity {
  const factory WeatherEntity({
    required String name,
     
    required MainWeatherEntity mainWeatherEntity,
  }) = _WeatherEntity;
}
