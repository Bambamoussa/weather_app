part of '../../../di/injection_container.dart';

void _featureWeather() {
  sl
    // Repositories
    ..injectRepository<WeatherRepository>(
      () => WeatherRepositoryImpl(
        networkInfo: sl(),
      ),
    )
    // UseCases
    ..injectUseCase<RegisterCityUseCases>(
      () => RegisterCityUseCases(
        sl(),
      ),
    )
    ..injectUseCase<GetCityListUseCases>(
      () => GetCityListUseCases(
        sl(),
      ),
    )

    //cubit
    ..injectCubit<RegisterCityCubit>(
      () => RegisterCityCubit(
        registerCityUseCases: sl(),
      ),
    )
    ..injectCubit<GetCityListCubit>(
      () => GetCityListCubit(
        getCityListUseCases: sl(),
      ),
    )
    ..injectCubit<WeatherCubit>(
      () => WeatherCubit(
        registerCityUseCases: sl(),
      ),
    );
}
