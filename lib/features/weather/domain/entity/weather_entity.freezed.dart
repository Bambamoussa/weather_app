// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEntity {
  String get name => throw _privateConstructorUsedError;
  MainWeatherEntity get mainWeatherEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEntityCopyWith<WeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEntityCopyWith<$Res> {
  factory $WeatherEntityCopyWith(
          WeatherEntity value, $Res Function(WeatherEntity) then) =
      _$WeatherEntityCopyWithImpl<$Res, WeatherEntity>;
  @useResult
  $Res call({String name, MainWeatherEntity mainWeatherEntity});

  $MainWeatherEntityCopyWith<$Res> get mainWeatherEntity;
}

/// @nodoc
class _$WeatherEntityCopyWithImpl<$Res, $Val extends WeatherEntity>
    implements $WeatherEntityCopyWith<$Res> {
  _$WeatherEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mainWeatherEntity = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mainWeatherEntity: null == mainWeatherEntity
          ? _value.mainWeatherEntity
          : mainWeatherEntity // ignore: cast_nullable_to_non_nullable
              as MainWeatherEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainWeatherEntityCopyWith<$Res> get mainWeatherEntity {
    return $MainWeatherEntityCopyWith<$Res>(_value.mainWeatherEntity, (value) {
      return _then(_value.copyWith(mainWeatherEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherEntityImplCopyWith<$Res>
    implements $WeatherEntityCopyWith<$Res> {
  factory _$$WeatherEntityImplCopyWith(
          _$WeatherEntityImpl value, $Res Function(_$WeatherEntityImpl) then) =
      __$$WeatherEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, MainWeatherEntity mainWeatherEntity});

  @override
  $MainWeatherEntityCopyWith<$Res> get mainWeatherEntity;
}

/// @nodoc
class __$$WeatherEntityImplCopyWithImpl<$Res>
    extends _$WeatherEntityCopyWithImpl<$Res, _$WeatherEntityImpl>
    implements _$$WeatherEntityImplCopyWith<$Res> {
  __$$WeatherEntityImplCopyWithImpl(
      _$WeatherEntityImpl _value, $Res Function(_$WeatherEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mainWeatherEntity = null,
  }) {
    return _then(_$WeatherEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mainWeatherEntity: null == mainWeatherEntity
          ? _value.mainWeatherEntity
          : mainWeatherEntity // ignore: cast_nullable_to_non_nullable
              as MainWeatherEntity,
    ));
  }
}

/// @nodoc

class _$WeatherEntityImpl implements _WeatherEntity {
  const _$WeatherEntityImpl(
      {required this.name, required this.mainWeatherEntity});

  @override
  final String name;
  @override
  final MainWeatherEntity mainWeatherEntity;

  @override
  String toString() {
    return 'WeatherEntity(name: $name, mainWeatherEntity: $mainWeatherEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mainWeatherEntity, mainWeatherEntity) ||
                other.mainWeatherEntity == mainWeatherEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, mainWeatherEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherEntityImplCopyWith<_$WeatherEntityImpl> get copyWith =>
      __$$WeatherEntityImplCopyWithImpl<_$WeatherEntityImpl>(this, _$identity);
}

abstract class _WeatherEntity implements WeatherEntity {
  const factory _WeatherEntity(
          {required final String name,
          required final MainWeatherEntity mainWeatherEntity}) =
      _$WeatherEntityImpl;

  @override
  String get name;
  @override
  MainWeatherEntity get mainWeatherEntity;
  @override
  @JsonKey(ignore: true)
  _$$WeatherEntityImplCopyWith<_$WeatherEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
