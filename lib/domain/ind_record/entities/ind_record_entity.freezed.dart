// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ind_record_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IndRecord {
  String get fullText => throw _privateConstructorUsedError;
  String get fullSummary => throw _privateConstructorUsedError;
  List<SpeakerDetails> get speakers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndRecordCopyWith<IndRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndRecordCopyWith<$Res> {
  factory $IndRecordCopyWith(IndRecord value, $Res Function(IndRecord) then) =
      _$IndRecordCopyWithImpl<$Res, IndRecord>;
  @useResult
  $Res call(
      {String fullText, String fullSummary, List<SpeakerDetails> speakers});
}

/// @nodoc
class _$IndRecordCopyWithImpl<$Res, $Val extends IndRecord>
    implements $IndRecordCopyWith<$Res> {
  _$IndRecordCopyWithImpl(this._value, this._then);

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
              as List<SpeakerDetails>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndRecordImplCopyWith<$Res>
    implements $IndRecordCopyWith<$Res> {
  factory _$$IndRecordImplCopyWith(
          _$IndRecordImpl value, $Res Function(_$IndRecordImpl) then) =
      __$$IndRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullText, String fullSummary, List<SpeakerDetails> speakers});
}

/// @nodoc
class __$$IndRecordImplCopyWithImpl<$Res>
    extends _$IndRecordCopyWithImpl<$Res, _$IndRecordImpl>
    implements _$$IndRecordImplCopyWith<$Res> {
  __$$IndRecordImplCopyWithImpl(
      _$IndRecordImpl _value, $Res Function(_$IndRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullText = null,
    Object? fullSummary = null,
    Object? speakers = null,
  }) {
    return _then(_$IndRecordImpl(
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
              as List<SpeakerDetails>,
    ));
  }
}

/// @nodoc

class _$IndRecordImpl extends _IndRecord {
  const _$IndRecordImpl(
      {required this.fullText,
      required this.fullSummary,
      required final List<SpeakerDetails> speakers})
      : _speakers = speakers,
        super._();

  @override
  final String fullText;
  @override
  final String fullSummary;
  final List<SpeakerDetails> _speakers;
  @override
  List<SpeakerDetails> get speakers {
    if (_speakers is EqualUnmodifiableListView) return _speakers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speakers);
  }

  @override
  String toString() {
    return 'IndRecord(fullText: $fullText, fullSummary: $fullSummary, speakers: $speakers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndRecordImpl &&
            (identical(other.fullText, fullText) ||
                other.fullText == fullText) &&
            (identical(other.fullSummary, fullSummary) ||
                other.fullSummary == fullSummary) &&
            const DeepCollectionEquality().equals(other._speakers, _speakers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullText, fullSummary,
      const DeepCollectionEquality().hash(_speakers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndRecordImplCopyWith<_$IndRecordImpl> get copyWith =>
      __$$IndRecordImplCopyWithImpl<_$IndRecordImpl>(this, _$identity);
}

abstract class _IndRecord extends IndRecord {
  const factory _IndRecord(
      {required final String fullText,
      required final String fullSummary,
      required final List<SpeakerDetails> speakers}) = _$IndRecordImpl;
  const _IndRecord._() : super._();

  @override
  String get fullText;
  @override
  String get fullSummary;
  @override
  List<SpeakerDetails> get speakers;
  @override
  @JsonKey(ignore: true)
  _$$IndRecordImplCopyWith<_$IndRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
