import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/domain/entity/user_entity.dart';
import 'package:weather/features/weather/domain/usescases/get_city_list_usescases.dart';
import 'package:weather/features/weather/presentation/cubit/get_city_list_cubit.dart';

class MockGetCityListUseCases extends Mock implements GetCityListUseCases {}

void main() {
  late GetCityListCubit getCityListCubit;
  late MockGetCityListUseCases mockGetCityListUseCases;

  setUp(() {
    mockGetCityListUseCases = MockGetCityListUseCases();
    getCityListCubit =
        GetCityListCubit(getCityListUseCases: mockGetCityListUseCases);
  });

  group(
    'GetCityListCubit',
    () {
      test('initial state is GetCityListState.initial', () {
        expect(getCityListCubit.state, const GetCityListState.initial());
      });

      group(
        'getCityList',
        () {
          const cityList = [
            UserEntity(id: "1", city: 'Paris'),
            UserEntity(id: "2", city: 'London'),
          ];

          test('emits [loading, success] when successful', () async {
            when(() => mockGetCityListUseCases.getCityList())
                .thenAnswer((_) async => const Result.success(cityList));

            final expectedStates = [
              const GetCityListState.loading(),
              const GetCityListState.success(userCityList: cityList),
            ];

            expectLater(getCityListCubit.stream, emitsInOrder(expectedStates));

            await getCityListCubit.getCityList();
          });

          test(
            'emits [loading, error] when failure occurs',
            () async {
              when(() => mockGetCityListUseCases.getCityList()).thenAnswer(
                  (_) async => const Result.failure(Failure.server()));

              final expectedStates = [
                const GetCityListState.loading(),
                const GetCityListState.error(
                  messageFailure: '',
                  failure: Failure.server(),
                ),
              ];

              expectLater(
                  getCityListCubit.stream, emitsInOrder(expectedStates));

              await getCityListCubit.getCityList();
            },
          );
        },
      );
    },
  );
}
