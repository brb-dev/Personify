// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) {
  return _LoginDto.fromJson(json);
}

/// @nodoc
mixin _$LoginDto {
  @JsonKey(name: 'displayName', defaultValue: '')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email', defaultValue: '')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'photoURL', defaultValue: '')
  String get photoURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'datagram_api_key', defaultValue: '')
  String get datagramKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'openai_api_key', defaultValue: '')
  String get openAIKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDtoCopyWith<LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) then) =
      _$LoginDtoCopyWithImpl<$Res, LoginDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'displayName', defaultValue: '') String displayName,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'photoURL', defaultValue: '') String photoURL,
      @JsonKey(name: 'datagram_api_key', defaultValue: '') String datagramKey,
      @JsonKey(name: 'openai_api_key', defaultValue: '') String openAIKey});
}

/// @nodoc
class _$LoginDtoCopyWithImpl<$Res, $Val extends LoginDto>
    implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$LoginDtoImplCopyWith<$Res>
    implements $LoginDtoCopyWith<$Res> {
  factory _$$LoginDtoImplCopyWith(
          _$LoginDtoImpl value, $Res Function(_$LoginDtoImpl) then) =
      __$$LoginDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'displayName', defaultValue: '') String displayName,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'photoURL', defaultValue: '') String photoURL,
      @JsonKey(name: 'datagram_api_key', defaultValue: '') String datagramKey,
      @JsonKey(name: 'openai_api_key', defaultValue: '') String openAIKey});
}

/// @nodoc
class __$$LoginDtoImplCopyWithImpl<$Res>
    extends _$LoginDtoCopyWithImpl<$Res, _$LoginDtoImpl>
    implements _$$LoginDtoImplCopyWith<$Res> {
  __$$LoginDtoImplCopyWithImpl(
      _$LoginDtoImpl _value, $Res Function(_$LoginDtoImpl) _then)
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
    return _then(_$LoginDtoImpl(
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
@JsonSerializable()
class _$LoginDtoImpl extends _LoginDto {
  const _$LoginDtoImpl(
      {@JsonKey(name: 'displayName', defaultValue: '')
      required this.displayName,
      @JsonKey(name: 'email', defaultValue: '') required this.email,
      @JsonKey(name: 'photoURL', defaultValue: '') required this.photoURL,
      @JsonKey(name: 'datagram_api_key', defaultValue: '')
      required this.datagramKey,
      @JsonKey(name: 'openai_api_key', defaultValue: '')
      required this.openAIKey})
      : super._();

  factory _$LoginDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDtoImplFromJson(json);

  @override
  @JsonKey(name: 'displayName', defaultValue: '')
  final String displayName;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  final String email;
  @override
  @JsonKey(name: 'photoURL', defaultValue: '')
  final String photoURL;
  @override
  @JsonKey(name: 'datagram_api_key', defaultValue: '')
  final String datagramKey;
  @override
  @JsonKey(name: 'openai_api_key', defaultValue: '')
  final String openAIKey;

  @override
  String toString() {
    return 'LoginDto(displayName: $displayName, email: $email, photoURL: $photoURL, datagramKey: $datagramKey, openAIKey: $openAIKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDtoImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, displayName, email, photoURL, datagramKey, openAIKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDtoImplCopyWith<_$LoginDtoImpl> get copyWith =>
      __$$LoginDtoImplCopyWithImpl<_$LoginDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDtoImplToJson(
      this,
    );
  }
}

abstract class _LoginDto extends LoginDto {
  const factory _LoginDto(
      {@JsonKey(name: 'displayName', defaultValue: '')
      required final String displayName,
      @JsonKey(name: 'email', defaultValue: '') required final String email,
      @JsonKey(name: 'photoURL', defaultValue: '')
      required final String photoURL,
      @JsonKey(name: 'datagram_api_key', defaultValue: '')
      required final String datagramKey,
      @JsonKey(name: 'openai_api_key', defaultValue: '')
      required final String openAIKey}) = _$LoginDtoImpl;
  const _LoginDto._() : super._();

  factory _LoginDto.fromJson(Map<String, dynamic> json) =
      _$LoginDtoImpl.fromJson;

  @override
  @JsonKey(name: 'displayName', defaultValue: '')
  String get displayName;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  String get email;
  @override
  @JsonKey(name: 'photoURL', defaultValue: '')
  String get photoURL;
  @override
  @JsonKey(name: 'datagram_api_key', defaultValue: '')
  String get datagramKey;
  @override
  @JsonKey(name: 'openai_api_key', defaultValue: '')
  String get openAIKey;
  @override
  @JsonKey(ignore: true)
  _$$LoginDtoImplCopyWith<_$LoginDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
