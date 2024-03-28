import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/domain/usescases/register_city_usecases.dart';

part 'register_city_state.dart';
part 'register_city_cubit.freezed.dart';

class RegisterCityCubit extends Cubit<RegisterCityState> {
  RegisterCityCubit({required this.registerCityUseCases})
      : super(const RegisterCityState.initial());

  final RegisterCityUseCases registerCityUseCases;

  Future<void> registerCity(
    String city,
  ) async {
    emit(
      const RegisterCityState.loading(),
    );
    registerCityUseCases.registerCity(city).then(
          (result) => result.when(
            success: (bool success) {
              emit(
                const RegisterCityState.success(),
              );
            },
            failure: (Failure failure) {
              emit(
                RegisterCityState.error(messageFailure: failure.message ?? ''),
              );
            },
          ),
        );
  }
}
