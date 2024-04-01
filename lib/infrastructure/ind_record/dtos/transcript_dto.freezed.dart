// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transcript_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TranscriptDto _$TranscriptDtoFromJson(Map<String, dynamic> json) {
  return _TranscriptDto.fromJson(json);
}

/// @nodoc
mixin _$TranscriptDto {
  @JsonKey(name: 'transcript', readValue: readTranscript, defaultValue: '')
  String get transcript => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary', defaultValue: '')
  String get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranscriptDtoCopyWith<TranscriptDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranscriptDtoCopyWith<$Res> {
  factory $TranscriptDtoCopyWith(
          TranscriptDto value, $Res Function(TranscriptDto) then) =
      _$TranscriptDtoCopyWithImpl<$Res, TranscriptDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'transcript', readValue: readTranscript, defaultValue: '')
      String transcript,
      @JsonKey(name: 'summary', defaultValue: '') String summary});
}

/// @nodoc
class _$TranscriptDtoCopyWithImpl<$Res, $Val extends TranscriptDto>
    implements $TranscriptDtoCopyWith<$Res> {
  _$TranscriptDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transcript = null,
    Object? summary = null,
  }) {
    return _then(_value.copyWith(
      transcript: null == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranscriptDtoImplCopyWith<$Res>
    implements $TranscriptDtoCopyWith<$Res> {
  factory _$$TranscriptDtoImplCopyWith(
          _$TranscriptDtoImpl value, $Res Function(_$TranscriptDtoImpl) then) =
      __$$TranscriptDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'transcript', readValue: readTranscript, defaultValue: '')
      String transcript,
      @JsonKey(name: 'summary', defaultValue: '') String summary});
}

/// @nodoc
class __$$TranscriptDtoImplCopyWithImpl<$Res>
    extends _$TranscriptDtoCopyWithImpl<$Res, _$TranscriptDtoImpl>
    implements _$$TranscriptDtoImplCopyWith<$Res> {
  __$$TranscriptDtoImplCopyWithImpl(
      _$TranscriptDtoImpl _value, $Res Function(_$TranscriptDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transcript = null,
    Object? summary = null,
  }) {
    return _then(_$TranscriptDtoImpl(
      transcript: null == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranscriptDtoImpl extends _TranscriptDto {
  const _$TranscriptDtoImpl(
      {@JsonKey(name: 'transcript', readValue: readTranscript, defaultValue: '')
      required this.transcript,
      @JsonKey(name: 'summary', defaultValue: '') required this.summary})
      : super._();

  factory _$TranscriptDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranscriptDtoImplFromJson(json);

  @override
  @JsonKey(name: 'transcript', readValue: readTranscript, defaultValue: '')
  final String transcript;
  @override
  @JsonKey(name: 'summary', defaultValue: '')
  final String summary;

  @override
  String toString() {
    return 'TranscriptDto(transcript: $transcript, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranscriptDtoImpl &&
            (identical(other.transcript, transcript) ||
                other.transcript == transcript) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transcript, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranscriptDtoImplCopyWith<_$TranscriptDtoImpl> get copyWith =>
      __$$TranscriptDtoImplCopyWithImpl<_$TranscriptDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranscriptDtoImplToJson(
      this,
    );
  }
}

abstract class _TranscriptDto extends TranscriptDto {
  const factory _TranscriptDto(
      {@JsonKey(name: 'transcript', readValue: readTranscript, defaultValue: '')
      required final String transcript,
      @JsonKey(name: 'summary', defaultValue: '')
      required final String summary}) = _$TranscriptDtoImpl;
  const _TranscriptDto._() : super._();

  factory _TranscriptDto.fromJson(Map<String, dynamic> json) =
      _$TranscriptDtoImpl.fromJson;

  @override
  @JsonKey(name: 'transcript', readValue: readTranscript, defaultValue: '')
  String get transcript;
  @override
  @JsonKey(name: 'summary', defaultValue: '')
  String get summary;
  @override
  @JsonKey(ignore: true)
  _$$TranscriptDtoImplCopyWith<_$TranscriptDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
