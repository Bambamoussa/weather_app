import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/domain/entity/city_entity.dart';
import 'package:weather/features/weather/domain/usescases/get_cities_usescases.dart';

part 'get_cities_state.dart';
part 'get_cities_cubit.freezed.dart';

class GetCitiesCubit extends Cubit<GetCitiesState> {
  GetCitiesCubit({required this.getCityListUseCases})
      : super(const GetCitiesState.initial());

  final GetCitiesUseCases getCityListUseCases;

  Future<void> getCities() async {
    emit(const GetCitiesState.loading());
    getCityListUseCases.getCityList().then(
          (result) => result.when(
            success: (cities) {
              emit(
                GetCitiesState.success(cities: cities),
              );
            },
            failure: (Failure failure) {
              emit(
                GetCitiesState.error(
                  messageFailure: failure.message ?? '',
                  failure: failure,
                ),
              );
            },
          ),
        );
  }
}
