// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transcript_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Transcript {
  String get transcript => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranscriptCopyWith<Transcript> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranscriptCopyWith<$Res> {
  factory $TranscriptCopyWith(
          Transcript value, $Res Function(Transcript) then) =
      _$TranscriptCopyWithImpl<$Res, Transcript>;
  @useResult
  $Res call({String transcript, String summary});
}

/// @nodoc
class _$TranscriptCopyWithImpl<$Res, $Val extends Transcript>
    implements $TranscriptCopyWith<$Res> {
  _$TranscriptCopyWithImpl(this._value, this._then);

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
abstract class _$$TranscriptImplCopyWith<$Res>
    implements $TranscriptCopyWith<$Res> {
  factory _$$TranscriptImplCopyWith(
          _$TranscriptImpl value, $Res Function(_$TranscriptImpl) then) =
      __$$TranscriptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transcript, String summary});
}

/// @nodoc
class __$$TranscriptImplCopyWithImpl<$Res>
    extends _$TranscriptCopyWithImpl<$Res, _$TranscriptImpl>
    implements _$$TranscriptImplCopyWith<$Res> {
  __$$TranscriptImplCopyWithImpl(
      _$TranscriptImpl _value, $Res Function(_$TranscriptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transcript = null,
    Object? summary = null,
  }) {
    return _then(_$TranscriptImpl(
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

class _$TranscriptImpl extends _Transcript {
  const _$TranscriptImpl({required this.transcript, required this.summary})
      : super._();

  @override
  final String transcript;
  @override
  final String summary;

  @override
  String toString() {
    return 'Transcript(transcript: $transcript, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranscriptImpl &&
            (identical(other.transcript, transcript) ||
                other.transcript == transcript) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transcript, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranscriptImplCopyWith<_$TranscriptImpl> get copyWith =>
      __$$TranscriptImplCopyWithImpl<_$TranscriptImpl>(this, _$identity);
}

abstract class _Transcript extends Transcript {
  const factory _Transcript(
      {required final String transcript,
      required final String summary}) = _$TranscriptImpl;
  const _Transcript._() : super._();

  @override
  String get transcript;
  @override
  String get summary;
  @override
  @JsonKey(ignore: true)
  _$$TranscriptImplCopyWith<_$TranscriptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
