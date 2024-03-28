part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _WeatherStateInitial;
  const factory WeatherState.loading() = _WeatherStateLoading;
  const factory WeatherState.success() = _WeatherStateSuccess;
  const factory WeatherState.error({required String messageFailure}) =
      _WeatherStateError;
}
