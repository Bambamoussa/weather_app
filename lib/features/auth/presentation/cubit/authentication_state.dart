part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _AuthenticationStateInitial;
  const factory AuthenticationState.loading() = _AuthenticationStateLoading;
  const factory AuthenticationState.success() = _AuthenticationStateSuccess;

  const factory AuthenticationState.error({required String messageFailure}) =
      _AuthenticationStateError;
}
