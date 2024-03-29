// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeathersModels _$WeathersModelsFromJson(Map<String, dynamic> json) {
  return _WeathersModels.fromJson(json);
}

/// @nodoc
mixin _$WeathersModels {
// ignore: invalid_annotation_target
  @JsonKey(name: 'name')
  String get name =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'main')
  MainWeathersModels get mainWeathersModels =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeathersModelsCopyWith<WeathersModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeathersModelsCopyWith<$Res> {
  factory $WeathersModelsCopyWith(
          WeathersModels value, $Res Function(WeathersModels) then) =
      _$WeathersModelsCopyWithImpl<$Res, WeathersModels>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'main') MainWeathersModels mainWeathersModels});

  $MainWeathersModelsCopyWith<$Res> get mainWeathersModels;
}

/// @nodoc
class _$WeathersModelsCopyWithImpl<$Res, $Val extends WeathersModels>
    implements $WeathersModelsCopyWith<$Res> {
  _$WeathersModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mainWeathersModels = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mainWeathersModels: null == mainWeathersModels
          ? _value.mainWeathersModels
          : mainWeathersModels // ignore: cast_nullable_to_non_nullable
              as MainWeathersModels,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainWeathersModelsCopyWith<$Res> get mainWeathersModels {
    return $MainWeathersModelsCopyWith<$Res>(_value.mainWeathersModels,
        (value) {
      return _then(_value.copyWith(mainWeathersModels: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeathersModelsImplCopyWith<$Res>
    implements $WeathersModelsCopyWith<$Res> {
  factory _$$WeathersModelsImplCopyWith(_$WeathersModelsImpl value,
          $Res Function(_$WeathersModelsImpl) then) =
      __$$WeathersModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'main') MainWeathersModels mainWeathersModels});

  @override
  $MainWeathersModelsCopyWith<$Res> get mainWeathersModels;
}

/// @nodoc
class __$$WeathersModelsImplCopyWithImpl<$Res>
    extends _$WeathersModelsCopyWithImpl<$Res, _$WeathersModelsImpl>
    implements _$$WeathersModelsImplCopyWith<$Res> {
  __$$WeathersModelsImplCopyWithImpl(
      _$WeathersModelsImpl _value, $Res Function(_$WeathersModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mainWeathersModels = null,
  }) {
    return _then(_$WeathersModelsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mainWeathersModels: null == mainWeathersModels
          ? _value.mainWeathersModels
          : mainWeathersModels // ignore: cast_nullable_to_non_nullable
              as MainWeathersModels,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeathersModelsImpl implements _WeathersModels {
  const _$WeathersModelsImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'main') required this.mainWeathersModels});

  factory _$WeathersModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeathersModelsImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'name')
  final String name;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'main')
  final MainWeathersModels mainWeathersModels;

  @override
  String toString() {
    return 'WeathersModels(name: $name, mainWeathersModels: $mainWeathersModels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeathersModelsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mainWeathersModels, mainWeathersModels) ||
                other.mainWeathersModels == mainWeathersModels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, mainWeathersModels);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeathersModelsImplCopyWith<_$WeathersModelsImpl> get copyWith =>
      __$$WeathersModelsImplCopyWithImpl<_$WeathersModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeathersModelsImplToJson(
      this,
    );
  }
}

abstract class _WeathersModels implements WeathersModels {
  const factory _WeathersModels(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'main')
          required final MainWeathersModels mainWeathersModels}) =
      _$WeathersModelsImpl;

  factory _WeathersModels.fromJson(Map<String, dynamic> json) =
      _$WeathersModelsImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'name')
  String get name;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'main')
  MainWeathersModels get mainWeathersModels;
  @override
  @JsonKey(ignore: true)
  _$$WeathersModelsImplCopyWith<_$WeathersModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
