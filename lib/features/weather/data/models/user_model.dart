import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/domain/entity/user_entity.dart';
part 'user_model.freezed.dart';

@freezed
class UserModels with _$UserModels {
  const factory UserModels({
    required String id,
     required String city,
     
  }) = _UserModels;

  factory UserModels.fromSnapshot(DocumentSnapshot documentSnapshot) {
    return UserModels(
      id: documentSnapshot.get('id'),
      city: documentSnapshot.get('city'),
       
    );
  }
}

extension UserModelsX on UserModels {
  UserEntity toDomain() {
    return UserEntity(
       id: id,
       city: city,
       
    );
  }
}