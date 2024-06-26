// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInError value) signInError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInError value)? signInError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInError value)? signInError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExceptionCopyWith<$Res> {
  factory $AuthExceptionCopyWith(
          AuthException value, $Res Function(AuthException) then) =
      _$AuthExceptionCopyWithImpl<$Res, AuthException>;
}

/// @nodoc
class _$AuthExceptionCopyWithImpl<$Res, $Val extends AuthException>
    implements $AuthExceptionCopyWith<$Res> {
  _$AuthExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInErrorImplCopyWith<$Res> {
  factory _$$SignInErrorImplCopyWith(
          _$SignInErrorImpl value, $Res Function(_$SignInErrorImpl) then) =
      __$$SignInErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInErrorImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$SignInErrorImpl>
    implements _$$SignInErrorImplCopyWith<$Res> {
  __$$SignInErrorImplCopyWithImpl(
      _$SignInErrorImpl _value, $Res Function(_$SignInErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInErrorImpl implements _SignInError {
  const _$SignInErrorImpl();

  @override
  String toString() {
    return 'AuthException.signInError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInError,
  }) {
    return signInError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInError,
  }) {
    return signInError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInError,
    required TResult orElse(),
  }) {
    if (signInError != null) {
      return signInError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInError value) signInError,
  }) {
    return signInError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInError value)? signInError,
  }) {
    return signInError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInError value)? signInError,
    required TResult orElse(),
  }) {
    if (signInError != null) {
      return signInError(this);
    }
    return orElse();
  }
}

abstract class _SignInError implements AuthException {
  const factory _SignInError() = _$SignInErrorImpl;
}
