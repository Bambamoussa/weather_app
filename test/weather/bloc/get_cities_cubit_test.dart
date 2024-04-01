import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/domain/entity/city_entity.dart';
import 'package:weather/features/weather/domain/usescases/get_cities_usescases.dart';
import 'package:weather/features/weather/presentation/cubit/get_cities_cubit.dart';

class MockGetCityListUseCases extends Mock implements GetCitiesUseCases {}

void main() {
  late GetCitiesCubit getCityListCubit;
  late MockGetCityListUseCases mockGetCityListUseCases;

  setUp(() {
    mockGetCityListUseCases = MockGetCityListUseCases();
    getCityListCubit =
        GetCitiesCubit(getCityListUseCases: mockGetCityListUseCases);
  });

  group(
    'GetCityListCubit',
    () {
      test('initial state is GetCityListState.initial', () {
        expect(getCityListCubit.state, const GetCitiesState.initial());
      });

      group(
        'getCityList',
        () {
          const cityList = [
            CityEntity(id: "1", city: 'Paris'),
            CityEntity(id: "2", city: 'London'),
          ];

          test('emits [loading, success] when successful', () async {
            when(() => mockGetCityListUseCases.getCityList())
                .thenAnswer((_) async => const Result.success(cityList));

            final expectedStates = [
              const GetCitiesState.loading(),
              const GetCitiesState.success(cities: cityList),
            ];

            expectLater(getCityListCubit.stream, emitsInOrder(expectedStates));

            await getCityListCubit.getCities();
          });

          test(
            'emits [loading, error] when failure occurs',
            () async {
              when(() => mockGetCityListUseCases.getCityList()).thenAnswer(
                  (_) async => const Result.failure(Failure.server()));

              final expectedStates = [
                const GetCitiesState.loading(),
                const GetCitiesState.error(
                  messageFailure: '',
                  failure: Failure.server(),
                ),
              ];

              expectLater(
                  getCityListCubit.stream, emitsInOrder(expectedStates));

              await getCityListCubit.getCities();
            },
          );
        },
      );
    },
  );
}
