import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/domain/entity/main_weather_entity.dart';
import 'package:weather/features/weather/domain/entity/weather_entity.dart';
import 'package:weather/features/weather/domain/usescases/weather_usescases.dart';
import 'package:weather/features/weather/presentation/cubit/weather_cubit.dart';

class MockWeatherUseCases extends Mock implements WeatherUseCases {}

void main() {
  late WeatherCubit weatherCubit;
  late MockWeatherUseCases mockWeatherUseCases;

  setUp(() {
    mockWeatherUseCases = MockWeatherUseCases();
    weatherCubit = WeatherCubit(weatherUseCases: mockWeatherUseCases);
  });

  group(
    'WeatherCubit',
    () {
      test('initial state is WeatherState.initial', () {
        expect(weatherCubit.state, const WeatherState.initial());
      });

      group(
        'getweatherByLocation',
        () {
          const city = 'Paris';
          const weatherEntity = WeatherEntity(
              name: "paris",
              mainWeatherEntity: MainWeatherEntity(
                temperature: 12,
                feelsLike: 12,
                pressure: 12,
                humidity: 12,
              ));

          test('emits [loading, loaded] when successful', () async {
            when(
              () => mockWeatherUseCases.getweatherByLocation(city),
            ).thenAnswer(
              (_) async => const Result.success(weatherEntity),
            );

            final expectedStates = [
              const WeatherState.loading(),
              const WeatherState.loaded(weatherEntity: weatherEntity),
            ];

            expectLater(weatherCubit.stream, emitsInOrder(expectedStates));

            await weatherCubit.getweatherByLocation(city);
          });

          test('emits [loading, error] when failure occurs', () async {
            when(
              () => mockWeatherUseCases.getweatherByLocation(city),
            ).thenAnswer(
              (_) async => const Result.failure(
                Failure.timeout(),
              ),
            );

            final expectedStates = [
              const WeatherState.loading(),
              const WeatherState.error(
                messageFailure: '',
                failure: Failure.timeout(),
              ),
            ];

            expectLater(
              weatherCubit.stream,
              emitsInOrder(expectedStates),
            );

            await weatherCubit.getweatherByLocation(city);
          });
        },
      );
    },
  );
}
