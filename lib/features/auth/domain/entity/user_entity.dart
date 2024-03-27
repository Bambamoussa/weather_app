import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({

    String? email,
    String? cid,
    String? name,
    
  }) = _UserEntity;
}
