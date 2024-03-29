import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_weather_entity.freezed.dart';

@freezed
class MainWeatherEntity with _$MainWeatherEntity {
  const factory MainWeatherEntity({
    required double temperature,
    required double feelsLike,
    required double pressure,
    required double humidity,
 
  }) = _MainWeatherEntity;
}