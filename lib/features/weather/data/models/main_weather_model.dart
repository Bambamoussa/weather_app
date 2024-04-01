import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/domain/entity/main_weather_entity.dart';

part 'main_weather_model.freezed.dart';
part 'main_weather_model.g.dart';

@freezed
class MainWeathersModels with _$MainWeathersModels {
  const factory MainWeathersModels({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'temp') required double temperature,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'feels_like') required double feelsLike,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'pressure') required double pressure,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'humidity') required double humidity,
  }) = _MainWeathersModels;

  factory MainWeathersModels.fromJson(Map<String, dynamic> json) =>
      _$MainWeathersModelsFromJson(json);
}

extension MainWeathersModelsX on MainWeathersModels {
  MainWeatherEntity toDomain() {
    return MainWeatherEntity(
      temperature: temperature,
      feelsLike: feelsLike,
      pressure: pressure,
      humidity: humidity,
    );
  }
}
