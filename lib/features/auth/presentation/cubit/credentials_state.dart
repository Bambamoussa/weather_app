part of 'credentials_cubit.dart';

@freezed
class CredentialsState with _$CredentialsState {
  const factory CredentialsState.initial() = _CredentialsStateInitial;
  const factory CredentialsState.loading() = _CredentialsStateLoading;
  const factory CredentialsState.success() = _CredentialsStateSuccess;

  const factory CredentialsState.error({required String messageFailure}) =
      _CredentialsStateError;
}
