// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MainWeathersModels _$MainWeathersModelsFromJson(Map<String, dynamic> json) {
  return _MainWeathersModels.fromJson(json);
}

/// @nodoc
mixin _$MainWeathersModels {
  @JsonKey(name: 'temp')
  double get temperature =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'feels_like')
  double get feelsLike =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'pressure')
  double get pressure =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'humidity')
  double get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainWeathersModelsCopyWith<MainWeathersModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainWeathersModelsCopyWith<$Res> {
  factory $MainWeathersModelsCopyWith(
          MainWeathersModels value, $Res Function(MainWeathersModels) then) =
      _$MainWeathersModelsCopyWithImpl<$Res, MainWeathersModels>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temp') double temperature,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'pressure') double pressure,
      @JsonKey(name: 'humidity') double humidity});
}

/// @nodoc
class _$MainWeathersModelsCopyWithImpl<$Res, $Val extends MainWeathersModels>
    implements $MainWeathersModelsCopyWith<$Res> {
  _$MainWeathersModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? feelsLike = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainWeathersModelsImplCopyWith<$Res>
    implements $MainWeathersModelsCopyWith<$Res> {
  factory _$$MainWeathersModelsImplCopyWith(_$MainWeathersModelsImpl value,
          $Res Function(_$MainWeathersModelsImpl) then) =
      __$$MainWeathersModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temp') double temperature,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'pressure') double pressure,
      @JsonKey(name: 'humidity') double humidity});
}

/// @nodoc
class __$$MainWeathersModelsImplCopyWithImpl<$Res>
    extends _$MainWeathersModelsCopyWithImpl<$Res, _$MainWeathersModelsImpl>
    implements _$$MainWeathersModelsImplCopyWith<$Res> {
  __$$MainWeathersModelsImplCopyWithImpl(_$MainWeathersModelsImpl _value,
      $Res Function(_$MainWeathersModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? feelsLike = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_$MainWeathersModelsImpl(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainWeathersModelsImpl implements _MainWeathersModels {
  const _$MainWeathersModelsImpl(
      {@JsonKey(name: 'temp') required this.temperature,
      @JsonKey(name: 'feels_like') required this.feelsLike,
      @JsonKey(name: 'pressure') required this.pressure,
      @JsonKey(name: 'humidity') required this.humidity});

  factory _$MainWeathersModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainWeathersModelsImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'temp')
  final double temperature;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'feels_like')
  final double feelsLike;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'pressure')
  final double pressure;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'humidity')
  final double humidity;

  @override
  String toString() {
    return 'MainWeathersModels(temperature: $temperature, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainWeathersModelsImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, temperature, feelsLike, pressure, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainWeathersModelsImplCopyWith<_$MainWeathersModelsImpl> get copyWith =>
      __$$MainWeathersModelsImplCopyWithImpl<_$MainWeathersModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainWeathersModelsImplToJson(
      this,
    );
  }
}

abstract class _MainWeathersModels implements MainWeathersModels {
  const factory _MainWeathersModels(
          {@JsonKey(name: 'temp') required final double temperature,
          @JsonKey(name: 'feels_like') required final double feelsLike,
          @JsonKey(name: 'pressure') required final double pressure,
          @JsonKey(name: 'humidity') required final double humidity}) =
      _$MainWeathersModelsImpl;

  factory _MainWeathersModels.fromJson(Map<String, dynamic> json) =
      _$MainWeathersModelsImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'temp')
  double get temperature;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'feels_like')
  double get feelsLike;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'pressure')
  double get pressure;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'humidity')
  double get humidity;
  @override
  @JsonKey(ignore: true)
  _$$MainWeathersModelsImplCopyWith<_$MainWeathersModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
