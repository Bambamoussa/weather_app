import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/auth/domain/usescases/login_usecases.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit({
    required this.loginUseCases,
  }) : super(const AuthenticationState.initial());
  final LoginUseCases loginUseCases;

  Future<void> logIn(
    String email,
    String password,
  ) async {
    emit(const AuthenticationState.loading());
    loginUseCases.logIn(email, password).then(
          (result) => result.when(
            success: (bool success) {
              emit(const AuthenticationState.success());
            },
            failure: (Failure failure) {
              emit(
                AuthenticationState.error(
                    messageFailure: failure.message ?? ''),
              );
            },
          ),
        );
  }
}
