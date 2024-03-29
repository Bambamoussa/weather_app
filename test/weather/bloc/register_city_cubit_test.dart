import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/domain/usescases/register_city_usecases.dart';
import 'package:weather/features/weather/presentation/cubit/register_city_cubit.dart';

class MockRegisterCityUseCases extends Mock implements RegisterCityUseCases {}

void main() {
  late RegisterCityCubit registerCityCubit;
  late MockRegisterCityUseCases mockRegisterCityUseCases;

  setUp(() {
    mockRegisterCityUseCases = MockRegisterCityUseCases();
    registerCityCubit =
        RegisterCityCubit(registerCityUseCases: mockRegisterCityUseCases);
  });

  group('RegisterCityCubit', () {
    test('initial state is RegisterCityState.initial', () {
      expect(registerCityCubit.state, const RegisterCityState.initial());
    });

    group('registerCity', () {
      const city = 'Paris';

      test('emits [loading, success] when successful', () async {
        when(() => mockRegisterCityUseCases.registerCity(city))
            .thenAnswer((_) async => const Result.success(true));

        final expectedStates = [
          const RegisterCityState.loading(),
          const RegisterCityState.success(),
        ];

        expectLater(registerCityCubit.stream, emitsInOrder(expectedStates));

        await registerCityCubit.registerCity(city);
      });

      test('emits [loading, error] when failure occurs', () async {
        when(() => mockRegisterCityUseCases.registerCity(city)).thenAnswer(
          (_) async => const Result.failure(
            Failure.badRequest(),
          ),
        );

        final expectedStates = [
          const RegisterCityState.loading(),
          const RegisterCityState.error(messageFailure: ''),
        ];

        expectLater(registerCityCubit.stream, emitsInOrder(expectedStates));

        await registerCityCubit.registerCity(city);
      });
    });
  });
}
