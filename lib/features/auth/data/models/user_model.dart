import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/auth/domain/entity/user_entity.dart';

part 'user_model.freezed.dart';

@freezed
class UserModels with _$UserModels {
  const factory UserModels({
    @JsonKey(name: 'cid') String? cid,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
  }) = _UserModels;

  factory UserModels.fromSnapshot(DocumentSnapshot documentSnapshot) {
    return UserModels(
      cid: documentSnapshot.get('cid'),
      name: documentSnapshot.get('name'),
      email: documentSnapshot.get('email'),
    );
  }
}

extension UserModelsX on UserModels {
  UserEntity toDomain() {
    return UserEntity(
      cid: cid,
      name: name,
      email: email,
    );
  }
}
