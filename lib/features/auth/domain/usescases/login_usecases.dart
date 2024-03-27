
import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/features/auth/domain/repository/auth_repository.dart';

class LoginUseCases {
  final AuthenticationRepository authenticationRepository;

  LoginUseCases(this.authenticationRepository);

  Future<Result<bool>> logIn(
    String email,
    String password,
  ) async =>
      authenticationRepository.logIn(email, password);
}
