// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserModels {
  @JsonKey(name: 'cid')
  String? get cid => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserModelsCopyWith<UserModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelsCopyWith<$Res> {
  factory $UserModelsCopyWith(
          UserModels value, $Res Function(UserModels) then) =
      _$UserModelsCopyWithImpl<$Res, UserModels>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cid') String? cid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$UserModelsCopyWithImpl<$Res, $Val extends UserModels>
    implements $UserModelsCopyWith<$Res> {
  _$UserModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cid = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      cid: freezed == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelsImplCopyWith<$Res>
    implements $UserModelsCopyWith<$Res> {
  factory _$$UserModelsImplCopyWith(
          _$UserModelsImpl value, $Res Function(_$UserModelsImpl) then) =
      __$$UserModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cid') String? cid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$$UserModelsImplCopyWithImpl<$Res>
    extends _$UserModelsCopyWithImpl<$Res, _$UserModelsImpl>
    implements _$$UserModelsImplCopyWith<$Res> {
  __$$UserModelsImplCopyWithImpl(
      _$UserModelsImpl _value, $Res Function(_$UserModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cid = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UserModelsImpl(
      cid: freezed == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserModelsImpl implements _UserModels {
  const _$UserModelsImpl(
      {@JsonKey(name: 'cid') this.cid,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email});

  @override
  @JsonKey(name: 'cid')
  final String? cid;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString() {
    return 'UserModels(cid: $cid, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelsImpl &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cid, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelsImplCopyWith<_$UserModelsImpl> get copyWith =>
      __$$UserModelsImplCopyWithImpl<_$UserModelsImpl>(this, _$identity);
}

abstract class _UserModels implements UserModels {
  const factory _UserModels(
      {@JsonKey(name: 'cid') final String? cid,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'email') final String? email}) = _$UserModelsImpl;

  @override
  @JsonKey(name: 'cid')
  String? get cid;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$UserModelsImplCopyWith<_$UserModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
