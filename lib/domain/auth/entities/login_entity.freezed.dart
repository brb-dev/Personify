// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Login {
  String get displayName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get photoURL => throw _privateConstructorUsedError;
  String get datagramKey => throw _privateConstructorUsedError;
  String get openAIKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginCopyWith<Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res, Login>;
  @useResult
  $Res call(
      {String displayName,
      String email,
      String photoURL,
      String datagramKey,
      String openAIKey});
}

/// @nodoc
class _$LoginCopyWithImpl<$Res, $Val extends Login>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? email = null,
    Object? photoURL = null,
    Object? datagramKey = null,
    Object? openAIKey = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: null == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      datagramKey: null == datagramKey
          ? _value.datagramKey
          : datagramKey // ignore: cast_nullable_to_non_nullable
              as String,
      openAIKey: null == openAIKey
          ? _value.openAIKey
          : openAIKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String displayName,
      String email,
      String photoURL,
      String datagramKey,
      String openAIKey});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? email = null,
    Object? photoURL = null,
    Object? datagramKey = null,
    Object? openAIKey = null,
  }) {
    return _then(_$LoginImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: null == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      datagramKey: null == datagramKey
          ? _value.datagramKey
          : datagramKey // ignore: cast_nullable_to_non_nullable
              as String,
      openAIKey: null == openAIKey
          ? _value.openAIKey
          : openAIKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl extends _Login {
  const _$LoginImpl(
      {required this.displayName,
      required this.email,
      required this.photoURL,
      required this.datagramKey,
      required this.openAIKey})
      : super._();

  @override
  final String displayName;
  @override
  final String email;
  @override
  final String photoURL;
  @override
  final String datagramKey;
  @override
  final String openAIKey;

  @override
  String toString() {
    return 'Login(displayName: $displayName, email: $email, photoURL: $photoURL, datagramKey: $datagramKey, openAIKey: $openAIKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.datagramKey, datagramKey) ||
                other.datagramKey == datagramKey) &&
            (identical(other.openAIKey, openAIKey) ||
                other.openAIKey == openAIKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, displayName, email, photoURL, datagramKey, openAIKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);
}

abstract class _Login extends Login {
  const factory _Login(
      {required final String displayName,
      required final String email,
      required final String photoURL,
      required final String datagramKey,
      required final String openAIKey}) = _$LoginImpl;
  const _Login._() : super._();

  @override
  String get displayName;
  @override
  String get email;
  @override
  String get photoURL;
  @override
  String get datagramKey;
  @override
  String get openAIKey;
  @override
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
