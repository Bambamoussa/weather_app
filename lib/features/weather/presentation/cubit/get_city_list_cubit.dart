import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/features/weather/domain/entity/user_entity.dart';
import 'package:weather/features/weather/domain/usescases/get_city_list_usescases.dart';

part 'get_city_list_state.dart';
part 'get_city_list_cubit.freezed.dart';

class GetCityListCubit extends Cubit<GetCityListState> {
  GetCityListCubit({required this.getCityListUseCases})
      : super(const GetCityListState.initial());

  final GetCityListUseCases getCityListUseCases;

  Future<void> getCityList() async {
    emit(const GetCityListState.loading());
    getCityListUseCases.getCityList().then(
          (result) => result.when(
            success: (userList) {
               
              emit(
                GetCityListState.success(userCityList: userList),
              );
            },
            failure: (Failure failure) {
              emit(
                GetCityListState.error(messageFailure: failure.message ?? ''),
              );
            },
          ),
        );
  }
}
