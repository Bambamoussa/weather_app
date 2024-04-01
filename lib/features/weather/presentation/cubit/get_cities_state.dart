part of 'get_cities_cubit.dart';

@freezed
class GetCitiesState with _$GetCitiesState {
  const factory GetCitiesState.initial() = _GetCitiesStateInitial;
  const factory GetCitiesState.loading() = _GetCitiesStateLoading;
  const factory GetCitiesState.success({required List<CityEntity> cities}) =
      _GetCitiesStateSuccess;
  const factory GetCitiesState.error({
    required String messageFailure,
    required Failure failure,
  }) = _GetCitiesStateError;
}
