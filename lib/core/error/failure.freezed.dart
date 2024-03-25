// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureBadRequestImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureBadRequestImplCopyWith(_$FailureBadRequestImpl value,
          $Res Function(_$FailureBadRequestImpl) then) =
      __$$FailureBadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureBadRequestImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureBadRequestImpl>
    implements _$$FailureBadRequestImplCopyWith<$Res> {
  __$$FailureBadRequestImplCopyWithImpl(_$FailureBadRequestImpl _value,
      $Res Function(_$FailureBadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureBadRequestImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureBadRequestImpl extends FailureBadRequest {
  const _$FailureBadRequestImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.badRequest(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureBadRequestImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureBadRequestImplCopyWith<_$FailureBadRequestImpl> get copyWith =>
      __$$FailureBadRequestImplCopyWithImpl<_$FailureBadRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class FailureBadRequest extends Failure {
  const factory FailureBadRequest({final String? message}) =
      _$FailureBadRequestImpl;
  const FailureBadRequest._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureBadRequestImplCopyWith<_$FailureBadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureUnauthorizedImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureUnauthorizedImplCopyWith(_$FailureUnauthorizedImpl value,
          $Res Function(_$FailureUnauthorizedImpl) then) =
      __$$FailureUnauthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureUnauthorizedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureUnauthorizedImpl>
    implements _$$FailureUnauthorizedImplCopyWith<$Res> {
  __$$FailureUnauthorizedImplCopyWithImpl(_$FailureUnauthorizedImpl _value,
      $Res Function(_$FailureUnauthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureUnauthorizedImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureUnauthorizedImpl extends FailureUnauthorized {
  const _$FailureUnauthorizedImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureUnauthorizedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureUnauthorizedImplCopyWith<_$FailureUnauthorizedImpl> get copyWith =>
      __$$FailureUnauthorizedImplCopyWithImpl<_$FailureUnauthorizedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class FailureUnauthorized extends Failure {
  const factory FailureUnauthorized({final String? message}) =
      _$FailureUnauthorizedImpl;
  const FailureUnauthorized._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureUnauthorizedImplCopyWith<_$FailureUnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureTimeoutImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureTimeoutImplCopyWith(_$FailureTimeoutImpl value,
          $Res Function(_$FailureTimeoutImpl) then) =
      __$$FailureTimeoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureTimeoutImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureTimeoutImpl>
    implements _$$FailureTimeoutImplCopyWith<$Res> {
  __$$FailureTimeoutImplCopyWithImpl(
      _$FailureTimeoutImpl _value, $Res Function(_$FailureTimeoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureTimeoutImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureTimeoutImpl extends FailureTimeout {
  const _$FailureTimeoutImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.timeout(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureTimeoutImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureTimeoutImplCopyWith<_$FailureTimeoutImpl> get copyWith =>
      __$$FailureTimeoutImplCopyWithImpl<_$FailureTimeoutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return timeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return timeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class FailureTimeout extends Failure {
  const factory FailureTimeout({final String? message}) = _$FailureTimeoutImpl;
  const FailureTimeout._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureTimeoutImplCopyWith<_$FailureTimeoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureOfflineImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureOfflineImplCopyWith(_$FailureOfflineImpl value,
          $Res Function(_$FailureOfflineImpl) then) =
      __$$FailureOfflineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureOfflineImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureOfflineImpl>
    implements _$$FailureOfflineImplCopyWith<$Res> {
  __$$FailureOfflineImplCopyWithImpl(
      _$FailureOfflineImpl _value, $Res Function(_$FailureOfflineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureOfflineImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureOfflineImpl extends FailureOffline {
  const _$FailureOfflineImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.offline(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureOfflineImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureOfflineImplCopyWith<_$FailureOfflineImpl> get copyWith =>
      __$$FailureOfflineImplCopyWithImpl<_$FailureOfflineImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return offline(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return offline?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class FailureOffline extends Failure {
  const factory FailureOffline({final String? message}) = _$FailureOfflineImpl;
  const FailureOffline._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureOfflineImplCopyWith<_$FailureOfflineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureNotFoundImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureNotFoundImplCopyWith(_$FailureNotFoundImpl value,
          $Res Function(_$FailureNotFoundImpl) then) =
      __$$FailureNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureNotFoundImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureNotFoundImpl>
    implements _$$FailureNotFoundImplCopyWith<$Res> {
  __$$FailureNotFoundImplCopyWithImpl(
      _$FailureNotFoundImpl _value, $Res Function(_$FailureNotFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureNotFoundImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureNotFoundImpl extends FailureNotFound {
  const _$FailureNotFoundImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureNotFoundImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureNotFoundImplCopyWith<_$FailureNotFoundImpl> get copyWith =>
      __$$FailureNotFoundImplCopyWithImpl<_$FailureNotFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class FailureNotFound extends Failure {
  const factory FailureNotFound({final String? message}) =
      _$FailureNotFoundImpl;
  const FailureNotFound._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureNotFoundImplCopyWith<_$FailureNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCacheImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureCacheImplCopyWith(
          _$FailureCacheImpl value, $Res Function(_$FailureCacheImpl) then) =
      __$$FailureCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureCacheImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureCacheImpl>
    implements _$$FailureCacheImplCopyWith<$Res> {
  __$$FailureCacheImplCopyWithImpl(
      _$FailureCacheImpl _value, $Res Function(_$FailureCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureCacheImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureCacheImpl extends FailureCache {
  const _$FailureCacheImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.cache(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureCacheImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureCacheImplCopyWith<_$FailureCacheImpl> get copyWith =>
      __$$FailureCacheImplCopyWithImpl<_$FailureCacheImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return cache(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return cache?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class FailureCache extends Failure {
  const factory FailureCache({final String? message}) = _$FailureCacheImpl;
  const FailureCache._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureCacheImplCopyWith<_$FailureCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureServerImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureServerImplCopyWith(
          _$FailureServerImpl value, $Res Function(_$FailureServerImpl) then) =
      __$$FailureServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureServerImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureServerImpl>
    implements _$$FailureServerImplCopyWith<$Res> {
  __$$FailureServerImplCopyWithImpl(
      _$FailureServerImpl _value, $Res Function(_$FailureServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureServerImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureServerImpl extends FailureServer {
  const _$FailureServerImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.server(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureServerImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureServerImplCopyWith<_$FailureServerImpl> get copyWith =>
      __$$FailureServerImplCopyWithImpl<_$FailureServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class FailureServer extends Failure {
  const factory FailureServer({final String? message}) = _$FailureServerImpl;
  const FailureServer._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureServerImplCopyWith<_$FailureServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
