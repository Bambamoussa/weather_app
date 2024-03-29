part of '../../../di/injection_container.dart';

void _featureAuth() {
  sl
    // Network
    ..injectNetwork<NetworkInfo>(() => NetworkInfoImpl())
    // Repositories
    ..injectRepository<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
        networkInfo: sl(),
        firebaseAuth: FirebaseAuth.instance,
        firebaseStore: FirebaseFirestore.instance,
      ),
    )
    // UseCases
    ..injectUseCase<RegisterUseCases>(
      () => RegisterUseCases(
        sl(),
      ),
    )
    ..injectUseCase<LoginUseCases>(
      () => LoginUseCases(
        sl(),
      ),
    )
    //cubit
    ..injectCubit<CredentialsCubit>(
      () => CredentialsCubit(
        registerUseCases: sl(),
      ),
    )
    ..injectCubit<AuthenticationCubit>(
      () => AuthenticationCubit(
        loginUseCases: sl(),
      ),
    );
}
