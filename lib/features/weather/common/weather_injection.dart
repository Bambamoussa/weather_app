part of '../../../di/injection_container.dart';

void _featureWeather() {
  sl
    // DataSources
    ..injectDataSource<WeatherRemoteDataSource>(
        () => WeatherRemoteDataSourceImpl(dio: dio))
    ..injectDataSource<WeatherLocalDataSource>(
      () => WeatherLocalDataSourceImpl(),
    )

    // Repositories
    ..injectRepository<WeatherRepository>(
      () => WeatherRepositoryImpl(
        networkInfo: sl(),
        weatherRemoteDataSource: sl(),
        weatherLocalDataSource: sl(),
        firebaseAuth: FirebaseAuth.instance,
        firebaseStore: FirebaseFirestore.instance,
      ),
    )
    // UseCases
    ..injectUseCase<RegisterCityUseCases>(
      () => RegisterCityUseCases(
        sl(),
      ),
    )
    ..injectUseCase<GetCitiesUseCases>(
      () => GetCitiesUseCases(
        sl(),
      ),
    )
    ..injectUseCase<WeatherUseCases>(
      () => WeatherUseCases(
        sl(),
      ),
    )

    //cubit
    ..injectCubit<RegisterCityCubit>(
      () => RegisterCityCubit(
        registerCityUseCases: sl(),
      ),
    )
    ..injectCubit<GetCitiesCubit>(
      () => GetCitiesCubit(
        getCityListUseCases: sl(),
      ),
    )
    ..injectCubit<WeatherCubit>(
      () => WeatherCubit(
        weatherUseCases: sl(),
      ),
    );
}
