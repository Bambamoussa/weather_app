import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/auth/domain/usescases/login_usecases.dart';
import 'package:weather/features/auth/presentation/cubit/authentication_cubit.dart';

class MockLoginUseCases extends Mock implements LoginUseCases {}

void main() {
  late AuthenticationCubit authenticationCubit;
  late MockLoginUseCases mockLoginUseCases;

  setUp(() {
    mockLoginUseCases = MockLoginUseCases();
    authenticationCubit = AuthenticationCubit(loginUseCases: mockLoginUseCases);
  });

  group('AuthenticationCubit', () {
    test('initial state is AuthenticationState.initial', () {
      expect(authenticationCubit.state, const AuthenticationState.initial());
    });

    group('logIn', () {
      const email = 'test@example.com';
      const password = 'password123';

      test('emits [loading, success] when successful', () async {
        when(
          () => mockLoginUseCases.logIn(email, password),
        ).thenAnswer((_) async => const Result.success(true));

        final expectedStates = [
          const AuthenticationState.loading(),
          const AuthenticationState.success(),
        ];

        expectLater(authenticationCubit.stream, emitsInOrder(expectedStates));

        await authenticationCubit.logIn(email, password);
      });

      test('emits [loading, error] when failure occurs', () async {
        when(
          () => mockLoginUseCases.logIn(
            email,
            password,
          ),
        ).thenAnswer(
          (_) async => const Result.failure(
            Failure.badRequest(),
          ),
        );

        final expectedStates = [
          const AuthenticationState.loading(),
          const AuthenticationState.error(messageFailure: ''),
        ];

        expectLater(authenticationCubit.stream, emitsInOrder(expectedStates));

        await authenticationCubit.logIn(email, password);
      });
    });
  });
}
