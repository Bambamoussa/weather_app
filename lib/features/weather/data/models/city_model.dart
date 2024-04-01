import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/domain/entity/city_entity.dart';
part 'city_model.freezed.dart';

@freezed
class CityModels with _$CityModels {
  const factory CityModels({
    required String id,
    required String city,
  }) = _CityModels;

  factory CityModels.fromSnapshot(DocumentSnapshot documentSnapshot) {
    return CityModels(
      id: documentSnapshot.get('id'),
      city: documentSnapshot.get('city'),
    );
  }
}

extension CityModelsX on CityModels {
  CityEntity toDomain() {
    return CityEntity(
      id: id,
      city: city,
    );
  }
}
