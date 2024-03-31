part of 'get_city_list_cubit.dart';

@freezed
class GetCityListState with _$GetCityListState {
  const factory GetCityListState.initial() = _GetCityListStateInitial;
  const factory GetCityListState.loading() = _GetCityListStateLoading;
  const factory GetCityListState.success(
      {required List<UserEntity> userCityList}) = _GetCityListStateSuccess;
  const factory GetCityListState.error({required String messageFailure,required Failure failure,}) =
      _GetCityListStateError;
}
