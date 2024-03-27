import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/auth/domain/usescases/register_usecases.dart';

part 'credentials_state.dart';
part 'credentials_cubit.freezed.dart';

class CredentialsCubit extends Cubit<CredentialsState> {
  CredentialsCubit({
    required this.registerUseCases,
  }) : super(const CredentialsState.initial());
  final RegisterUseCases registerUseCases;

  Future<void> register(
    String email,
    String password,
  ) async {
    emit(const CredentialsState.loading());
    registerUseCases.register(email, password).then(
          (result) => result.when(
            success: (bool success) {
              emit(const CredentialsState.success());
            },
            failure: (Failure failure) {
              emit(
                CredentialsState.error(messageFailure: failure.message ?? ''),
              );
            },
          ),
        );
  }
}
