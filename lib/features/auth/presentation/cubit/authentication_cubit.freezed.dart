// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationState {
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
    required TResult Function(_AuthenticationStateInitial value) initial,
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateSuccess value) success,
    required TResult Function(_AuthenticationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateInitial value)? initial,
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateSuccess value)? success,
    TResult? Function(_AuthenticationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateInitial value)? initial,
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateSuccess value)? success,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticationStateInitialImplCopyWith<$Res> {
  factory _$$AuthenticationStateInitialImplCopyWith(
          _$AuthenticationStateInitialImpl value,
          $Res Function(_$AuthenticationStateInitialImpl) then) =
      __$$AuthenticationStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationStateInitialImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationStateInitialImpl>
    implements _$$AuthenticationStateInitialImplCopyWith<$Res> {
  __$$AuthenticationStateInitialImplCopyWithImpl(
      _$AuthenticationStateInitialImpl _value,
      $Res Function(_$AuthenticationStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationStateInitialImpl implements _AuthenticationStateInitial {
  const _$AuthenticationStateInitialImpl();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateInitialImpl);
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
    required TResult Function(_AuthenticationStateInitial value) initial,
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateSuccess value) success,
    required TResult Function(_AuthenticationStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateInitial value)? initial,
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateSuccess value)? success,
    TResult? Function(_AuthenticationStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateInitial value)? initial,
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateSuccess value)? success,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStateInitial implements AuthenticationState {
  const factory _AuthenticationStateInitial() =
      _$AuthenticationStateInitialImpl;
}

/// @nodoc
abstract class _$$AuthenticationStateLoadingImplCopyWith<$Res> {
  factory _$$AuthenticationStateLoadingImplCopyWith(
          _$AuthenticationStateLoadingImpl value,
          $Res Function(_$AuthenticationStateLoadingImpl) then) =
      __$$AuthenticationStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationStateLoadingImpl>
    implements _$$AuthenticationStateLoadingImplCopyWith<$Res> {
  __$$AuthenticationStateLoadingImplCopyWithImpl(
      _$AuthenticationStateLoadingImpl _value,
      $Res Function(_$AuthenticationStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationStateLoadingImpl implements _AuthenticationStateLoading {
  const _$AuthenticationStateLoadingImpl();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateLoadingImpl);
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
    required TResult Function(_AuthenticationStateInitial value) initial,
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateSuccess value) success,
    required TResult Function(_AuthenticationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateInitial value)? initial,
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateSuccess value)? success,
    TResult? Function(_AuthenticationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateInitial value)? initial,
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateSuccess value)? success,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStateLoading implements AuthenticationState {
  const factory _AuthenticationStateLoading() =
      _$AuthenticationStateLoadingImpl;
}

/// @nodoc
abstract class _$$AuthenticationStateSuccessImplCopyWith<$Res> {
  factory _$$AuthenticationStateSuccessImplCopyWith(
          _$AuthenticationStateSuccessImpl value,
          $Res Function(_$AuthenticationStateSuccessImpl) then) =
      __$$AuthenticationStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationStateSuccessImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationStateSuccessImpl>
    implements _$$AuthenticationStateSuccessImplCopyWith<$Res> {
  __$$AuthenticationStateSuccessImplCopyWithImpl(
      _$AuthenticationStateSuccessImpl _value,
      $Res Function(_$AuthenticationStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationStateSuccessImpl implements _AuthenticationStateSuccess {
  const _$AuthenticationStateSuccessImpl();

  @override
  String toString() {
    return 'AuthenticationState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateSuccessImpl);
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
    required TResult Function(_AuthenticationStateInitial value) initial,
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateSuccess value) success,
    required TResult Function(_AuthenticationStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateInitial value)? initial,
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateSuccess value)? success,
    TResult? Function(_AuthenticationStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateInitial value)? initial,
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateSuccess value)? success,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStateSuccess implements AuthenticationState {
  const factory _AuthenticationStateSuccess() =
      _$AuthenticationStateSuccessImpl;
}

/// @nodoc
abstract class _$$AuthenticationStateErrorImplCopyWith<$Res> {
  factory _$$AuthenticationStateErrorImplCopyWith(
          _$AuthenticationStateErrorImpl value,
          $Res Function(_$AuthenticationStateErrorImpl) then) =
      __$$AuthenticationStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageFailure});
}

/// @nodoc
class __$$AuthenticationStateErrorImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationStateErrorImpl>
    implements _$$AuthenticationStateErrorImplCopyWith<$Res> {
  __$$AuthenticationStateErrorImplCopyWithImpl(
      _$AuthenticationStateErrorImpl _value,
      $Res Function(_$AuthenticationStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageFailure = null,
  }) {
    return _then(_$AuthenticationStateErrorImpl(
      messageFailure: null == messageFailure
          ? _value.messageFailure
          : messageFailure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationStateErrorImpl implements _AuthenticationStateError {
  const _$AuthenticationStateErrorImpl({required this.messageFailure});

  @override
  final String messageFailure;

  @override
  String toString() {
    return 'AuthenticationState.error(messageFailure: $messageFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateErrorImpl &&
            (identical(other.messageFailure, messageFailure) ||
                other.messageFailure == messageFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateErrorImplCopyWith<_$AuthenticationStateErrorImpl>
      get copyWith => __$$AuthenticationStateErrorImplCopyWithImpl<
          _$AuthenticationStateErrorImpl>(this, _$identity);

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
    required TResult Function(_AuthenticationStateInitial value) initial,
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateSuccess value) success,
    required TResult Function(_AuthenticationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateInitial value)? initial,
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateSuccess value)? success,
    TResult? Function(_AuthenticationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateInitial value)? initial,
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateSuccess value)? success,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStateError implements AuthenticationState {
  const factory _AuthenticationStateError(
      {required final String messageFailure}) = _$AuthenticationStateErrorImpl;

  String get messageFailure;
  @JsonKey(ignore: true)
  _$$AuthenticationStateErrorImplCopyWith<_$AuthenticationStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
