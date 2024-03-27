
import 'package:weather/core/domain/entities/result.dart';

abstract class AuthenticationRepository {
  Future<Result<bool>> logIn(
    String email,
    String password,
  );

  Future<Result<bool>> register(
    String email,
    String password,
  );
}
