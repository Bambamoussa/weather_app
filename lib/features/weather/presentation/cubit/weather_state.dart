part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _WeatherInitial;
  const factory WeatherState.loading() = _WeatherLoading;
  const factory WeatherState.loaded({
    required WeatherEntity weatherEntity,
  }) = _WeatherLoaded;
  const factory WeatherState.error(
      {required Failure failure,
      required String messageFailure}) = _WeatherError;
}
