import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/domain/usescases/register_city_usecases.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required this.registerCityUseCases})
      : super(const WeatherState.initial());

  final RegisterCityUseCases registerCityUseCases;

   Future<void> registerCity(
    String city,
    
  ) async {
    emit(const WeatherState.loading());
    registerCityUseCases.registerCity(city).then(
          (result) => result.when(
            success: (bool success) {
              emit(const WeatherState.success(),);
            },
            failure: (Failure failure) {
              emit(
                WeatherState.error(messageFailure: failure.message ?? ''),
              );
            },
          ),
        );
  }
  
}
