import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/domain/entity/weather_entity.dart';
import 'package:weather/features/weather/domain/usescases/weather_usescases.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required this.weatherUseCases})
      : super(const WeatherState.initial());

  final WeatherUseCases weatherUseCases;

  Future<void> getweatherByLocation(
    String city,
  ) async {
    emit(const WeatherState.loading());
    weatherUseCases.getweatherByLocation(city).then(
          (result) => result.when(
            success: (weatherEntity) {
              emit(
                WeatherState.loaded(weatherEntity: weatherEntity),
              );
            },
            failure: (Failure failure) {
              emit(
                WeatherState.error(
                    messageFailure: failure.message ?? '', failure: failure),
              );
            },
          ),
        );
  }
}
