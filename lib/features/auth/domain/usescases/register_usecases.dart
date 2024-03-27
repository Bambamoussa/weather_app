import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/features/auth/domain/repository/auth_repository.dart';

class RegisterUseCases {
  final AuthenticationRepository authenticationRepository;

  RegisterUseCases(this.authenticationRepository);

  Future<Result<bool>> register(
    String email,
    String password,
  ) async =>
      authenticationRepository.register(email, password);
}
