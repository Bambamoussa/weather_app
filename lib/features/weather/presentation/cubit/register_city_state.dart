part of 'register_city_cubit.dart';

@freezed
class RegisterCityState with _$RegisterCityState {
  const factory RegisterCityState.initial() = _RegisterCityStateInitial;
  const factory RegisterCityState.loading() = _RegisterCityStateLoading;
  const factory RegisterCityState.success() = _RegisterCityStateSuccess;
  const factory RegisterCityState.error({required String messageFailure}) =
      _RegisterCityStateError;
}
