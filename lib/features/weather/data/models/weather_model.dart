import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/data/models/main_weather_model.dart';
import 'package:weather/features/weather/domain/entity/weather_entity.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeathersModels with _$WeathersModels {
  const factory WeathersModels({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'name') required String name,

    // ignore: invalid_annotation_target
    @JsonKey(name: 'main') required MainWeathersModels mainWeathersModels,
  }) = _WeathersModels;

  factory WeathersModels.fromJson(Map<String, dynamic> json) =>
      _$WeathersModelsFromJson(json);
}

extension WeathersModelsX on WeathersModels {
  WeatherEntity toDomain() {
    return WeatherEntity(
      name: name,
      mainWeatherEntity: mainWeathersModels.toDomain(),
    );
  }
}
