// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String messageFailure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String messageFailure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String messageFailure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateSuccess value) success,
    required TResult Function(_WeatherStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherStateInitial value)? initial,
    TResult? Function(_WeatherStateLoading value)? loading,
    TResult? Function(_WeatherStateSuccess value)? success,
    TResult? Function(_WeatherStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateSuccess value)? success,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherStateInitialImplCopyWith<$Res> {
  factory _$$WeatherStateInitialImplCopyWith(_$WeatherStateInitialImpl value,
          $Res Function(_$WeatherStateInitialImpl) then) =
      __$$WeatherStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherStateInitialImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateInitialImpl>
    implements _$$WeatherStateInitialImplCopyWith<$Res> {
  __$$WeatherStateInitialImplCopyWithImpl(_$WeatherStateInitialImpl _value,
      $Res Function(_$WeatherStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherStateInitialImpl implements _WeatherStateInitial {
  const _$WeatherStateInitialImpl();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String messageFailure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String messageFailure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String messageFailure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateSuccess value) success,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherStateInitial value)? initial,
    TResult? Function(_WeatherStateLoading value)? loading,
    TResult? Function(_WeatherStateSuccess value)? success,
    TResult? Function(_WeatherStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateSuccess value)? success,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateInitial implements WeatherState {
  const factory _WeatherStateInitial() = _$WeatherStateInitialImpl;
}

/// @nodoc
abstract class _$$WeatherStateLoadingImplCopyWith<$Res> {
  factory _$$WeatherStateLoadingImplCopyWith(_$WeatherStateLoadingImpl value,
          $Res Function(_$WeatherStateLoadingImpl) then) =
      __$$WeatherStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherStateLoadingImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateLoadingImpl>
    implements _$$WeatherStateLoadingImplCopyWith<$Res> {
  __$$WeatherStateLoadingImplCopyWithImpl(_$WeatherStateLoadingImpl _value,
      $Res Function(_$WeatherStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherStateLoadingImpl implements _WeatherStateLoading {
  const _$WeatherStateLoadingImpl();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String messageFailure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String messageFailure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String messageFailure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateSuccess value) success,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherStateInitial value)? initial,
    TResult? Function(_WeatherStateLoading value)? loading,
    TResult? Function(_WeatherStateSuccess value)? success,
    TResult? Function(_WeatherStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateSuccess value)? success,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateLoading implements WeatherState {
  const factory _WeatherStateLoading() = _$WeatherStateLoadingImpl;
}

/// @nodoc
abstract class _$$WeatherStateSuccessImplCopyWith<$Res> {
  factory _$$WeatherStateSuccessImplCopyWith(_$WeatherStateSuccessImpl value,
          $Res Function(_$WeatherStateSuccessImpl) then) =
      __$$WeatherStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherStateSuccessImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateSuccessImpl>
    implements _$$WeatherStateSuccessImplCopyWith<$Res> {
  __$$WeatherStateSuccessImplCopyWithImpl(_$WeatherStateSuccessImpl _value,
      $Res Function(_$WeatherStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherStateSuccessImpl implements _WeatherStateSuccess {
  const _$WeatherStateSuccessImpl();

  @override
  String toString() {
    return 'WeatherState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String messageFailure) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String messageFailure)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String messageFailure)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateSuccess value) success,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherStateInitial value)? initial,
    TResult? Function(_WeatherStateLoading value)? loading,
    TResult? Function(_WeatherStateSuccess value)? success,
    TResult? Function(_WeatherStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateSuccess value)? success,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateSuccess implements WeatherState {
  const factory _WeatherStateSuccess() = _$WeatherStateSuccessImpl;
}

/// @nodoc
abstract class _$$WeatherStateErrorImplCopyWith<$Res> {
  factory _$$WeatherStateErrorImplCopyWith(_$WeatherStateErrorImpl value,
          $Res Function(_$WeatherStateErrorImpl) then) =
      __$$WeatherStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageFailure});
}

/// @nodoc
class __$$WeatherStateErrorImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateErrorImpl>
    implements _$$WeatherStateErrorImplCopyWith<$Res> {
  __$$WeatherStateErrorImplCopyWithImpl(_$WeatherStateErrorImpl _value,
      $Res Function(_$WeatherStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageFailure = null,
  }) {
    return _then(_$WeatherStateErrorImpl(
      messageFailure: null == messageFailure
          ? _value.messageFailure
          : messageFailure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherStateErrorImpl implements _WeatherStateError {
  const _$WeatherStateErrorImpl({required this.messageFailure});

  @override
  final String messageFailure;

  @override
  String toString() {
    return 'WeatherState.error(messageFailure: $messageFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateErrorImpl &&
            (identical(other.messageFailure, messageFailure) ||
                other.messageFailure == messageFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateErrorImplCopyWith<_$WeatherStateErrorImpl> get copyWith =>
      __$$WeatherStateErrorImplCopyWithImpl<_$WeatherStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String messageFailure) error,
  }) {
    return error(messageFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String messageFailure)? error,
  }) {
    return error?.call(messageFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String messageFailure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(messageFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateSuccess value) success,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherStateInitial value)? initial,
    TResult? Function(_WeatherStateLoading value)? loading,
    TResult? Function(_WeatherStateSuccess value)? success,
    TResult? Function(_WeatherStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateSuccess value)? success,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateError implements WeatherState {
  const factory _WeatherStateError({required final String messageFailure}) =
      _$WeatherStateErrorImpl;

  String get messageFailure;
  @JsonKey(ignore: true)
  _$$WeatherStateErrorImplCopyWith<_$WeatherStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
