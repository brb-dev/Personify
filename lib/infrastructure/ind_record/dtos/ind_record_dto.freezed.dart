// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ind_record_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IndRecordDto _$IndRecordDtoFromJson(Map<String, dynamic> json) {
  return _IndRecordDto.fromJson(json);
}

/// @nodoc
mixin _$IndRecordDto {
  @JsonKey(name: 'fullText', defaultValue: '')
  String get fullText => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullSummary', defaultValue: '')
  String get fullSummary => throw _privateConstructorUsedError;
  @JsonKey(name: 'speakers', defaultValue: <SpeakerDetailsDto>[])
  List<SpeakerDetailsDto> get speakers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndRecordDtoCopyWith<IndRecordDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndRecordDtoCopyWith<$Res> {
  factory $IndRecordDtoCopyWith(
          IndRecordDto value, $Res Function(IndRecordDto) then) =
      _$IndRecordDtoCopyWithImpl<$Res, IndRecordDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fullText', defaultValue: '') String fullText,
      @JsonKey(name: 'fullSummary', defaultValue: '') String fullSummary,
      @JsonKey(name: 'speakers', defaultValue: <SpeakerDetailsDto>[])
      List<SpeakerDetailsDto> speakers});
}

/// @nodoc
class _$IndRecordDtoCopyWithImpl<$Res, $Val extends IndRecordDto>
    implements $IndRecordDtoCopyWith<$Res> {
  _$IndRecordDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullText = null,
    Object? fullSummary = null,
    Object? speakers = null,
  }) {
    return _then(_value.copyWith(
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      fullSummary: null == fullSummary
          ? _value.fullSummary
          : fullSummary // ignore: cast_nullable_to_non_nullable
              as String,
      speakers: null == speakers
          ? _value.speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<SpeakerDetailsDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndRecordDtoImplCopyWith<$Res>
    implements $IndRecordDtoCopyWith<$Res> {
  factory _$$IndRecordDtoImplCopyWith(
          _$IndRecordDtoImpl value, $Res Function(_$IndRecordDtoImpl) then) =
      __$$IndRecordDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fullText', defaultValue: '') String fullText,
      @JsonKey(name: 'fullSummary', defaultValue: '') String fullSummary,
      @JsonKey(name: 'speakers', defaultValue: <SpeakerDetailsDto>[])
      List<SpeakerDetailsDto> speakers});
}

/// @nodoc
class __$$IndRecordDtoImplCopyWithImpl<$Res>
    extends _$IndRecordDtoCopyWithImpl<$Res, _$IndRecordDtoImpl>
    implements _$$IndRecordDtoImplCopyWith<$Res> {
  __$$IndRecordDtoImplCopyWithImpl(
      _$IndRecordDtoImpl _value, $Res Function(_$IndRecordDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullText = null,
    Object? fullSummary = null,
    Object? speakers = null,
  }) {
    return _then(_$IndRecordDtoImpl(
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      fullSummary: null == fullSummary
          ? _value.fullSummary
          : fullSummary // ignore: cast_nullable_to_non_nullable
              as String,
      speakers: null == speakers
          ? _value._speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<SpeakerDetailsDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndRecordDtoImpl extends _IndRecordDto {
  const _$IndRecordDtoImpl(
      {@JsonKey(name: 'fullText', defaultValue: '') required this.fullText,
      @JsonKey(name: 'fullSummary', defaultValue: '') required this.fullSummary,
      @JsonKey(name: 'speakers', defaultValue: <SpeakerDetailsDto>[])
      required final List<SpeakerDetailsDto> speakers})
      : _speakers = speakers,
        super._();

  factory _$IndRecordDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndRecordDtoImplFromJson(json);

  @override
  @JsonKey(name: 'fullText', defaultValue: '')
  final String fullText;
  @override
  @JsonKey(name: 'fullSummary', defaultValue: '')
  final String fullSummary;
  final List<SpeakerDetailsDto> _speakers;
  @override
  @JsonKey(name: 'speakers', defaultValue: <SpeakerDetailsDto>[])
  List<SpeakerDetailsDto> get speakers {
    if (_speakers is EqualUnmodifiableListView) return _speakers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speakers);
  }

  @override
  String toString() {
    return 'IndRecordDto(fullText: $fullText, fullSummary: $fullSummary, speakers: $speakers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndRecordDtoImpl &&
            (identical(other.fullText, fullText) ||
                other.fullText == fullText) &&
            (identical(other.fullSummary, fullSummary) ||
                other.fullSummary == fullSummary) &&
            const DeepCollectionEquality().equals(other._speakers, _speakers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullText, fullSummary,
      const DeepCollectionEquality().hash(_speakers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndRecordDtoImplCopyWith<_$IndRecordDtoImpl> get copyWith =>
      __$$IndRecordDtoImplCopyWithImpl<_$IndRecordDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndRecordDtoImplToJson(
      this,
    );
  }
}

abstract class _IndRecordDto extends IndRecordDto {
  const factory _IndRecordDto(
      {@JsonKey(name: 'fullText', defaultValue: '')
      required final String fullText,
      @JsonKey(name: 'fullSummary', defaultValue: '')
      required final String fullSummary,
      @JsonKey(name: 'speakers', defaultValue: <SpeakerDetailsDto>[])
      required final List<SpeakerDetailsDto> speakers}) = _$IndRecordDtoImpl;
  const _IndRecordDto._() : super._();

  factory _IndRecordDto.fromJson(Map<String, dynamic> json) =
      _$IndRecordDtoImpl.fromJson;

  @override
  @JsonKey(name: 'fullText', defaultValue: '')
  String get fullText;
  @override
  @JsonKey(name: 'fullSummary', defaultValue: '')
  String get fullSummary;
  @override
  @JsonKey(name: 'speakers', defaultValue: <SpeakerDetailsDto>[])
  List<SpeakerDetailsDto> get speakers;
  @override
  @JsonKey(ignore: true)
  _$$IndRecordDtoImplCopyWith<_$IndRecordDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
