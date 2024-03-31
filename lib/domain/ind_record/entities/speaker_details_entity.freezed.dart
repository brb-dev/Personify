// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speaker_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpeakerDetails {
  String get displayName => throw _privateConstructorUsedError;
  String get personalityScore => throw _privateConstructorUsedError;
  Map<String, String> get emotionMap => throw _privateConstructorUsedError;
  Map<String, String> get highlightMap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpeakerDetailsCopyWith<SpeakerDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakerDetailsCopyWith<$Res> {
  factory $SpeakerDetailsCopyWith(
          SpeakerDetails value, $Res Function(SpeakerDetails) then) =
      _$SpeakerDetailsCopyWithImpl<$Res, SpeakerDetails>;
  @useResult
  $Res call(
      {String displayName,
      String personalityScore,
      Map<String, String> emotionMap,
      Map<String, String> highlightMap});
}

/// @nodoc
class _$SpeakerDetailsCopyWithImpl<$Res, $Val extends SpeakerDetails>
    implements $SpeakerDetailsCopyWith<$Res> {
  _$SpeakerDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? personalityScore = null,
    Object? emotionMap = null,
    Object? highlightMap = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      personalityScore: null == personalityScore
          ? _value.personalityScore
          : personalityScore // ignore: cast_nullable_to_non_nullable
              as String,
      emotionMap: null == emotionMap
          ? _value.emotionMap
          : emotionMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      highlightMap: null == highlightMap
          ? _value.highlightMap
          : highlightMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeakerDetailsImplCopyWith<$Res>
    implements $SpeakerDetailsCopyWith<$Res> {
  factory _$$SpeakerDetailsImplCopyWith(_$SpeakerDetailsImpl value,
          $Res Function(_$SpeakerDetailsImpl) then) =
      __$$SpeakerDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String displayName,
      String personalityScore,
      Map<String, String> emotionMap,
      Map<String, String> highlightMap});
}

/// @nodoc
class __$$SpeakerDetailsImplCopyWithImpl<$Res>
    extends _$SpeakerDetailsCopyWithImpl<$Res, _$SpeakerDetailsImpl>
    implements _$$SpeakerDetailsImplCopyWith<$Res> {
  __$$SpeakerDetailsImplCopyWithImpl(
      _$SpeakerDetailsImpl _value, $Res Function(_$SpeakerDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? personalityScore = null,
    Object? emotionMap = null,
    Object? highlightMap = null,
  }) {
    return _then(_$SpeakerDetailsImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      personalityScore: null == personalityScore
          ? _value.personalityScore
          : personalityScore // ignore: cast_nullable_to_non_nullable
              as String,
      emotionMap: null == emotionMap
          ? _value._emotionMap
          : emotionMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      highlightMap: null == highlightMap
          ? _value._highlightMap
          : highlightMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$SpeakerDetailsImpl extends _SpeakerDetails {
  const _$SpeakerDetailsImpl(
      {required this.displayName,
      required this.personalityScore,
      required final Map<String, String> emotionMap,
      required final Map<String, String> highlightMap})
      : _emotionMap = emotionMap,
        _highlightMap = highlightMap,
        super._();

  @override
  final String displayName;
  @override
  final String personalityScore;
  final Map<String, String> _emotionMap;
  @override
  Map<String, String> get emotionMap {
    if (_emotionMap is EqualUnmodifiableMapView) return _emotionMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_emotionMap);
  }

  final Map<String, String> _highlightMap;
  @override
  Map<String, String> get highlightMap {
    if (_highlightMap is EqualUnmodifiableMapView) return _highlightMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_highlightMap);
  }

  @override
  String toString() {
    return 'SpeakerDetails(displayName: $displayName, personalityScore: $personalityScore, emotionMap: $emotionMap, highlightMap: $highlightMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeakerDetailsImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.personalityScore, personalityScore) ||
                other.personalityScore == personalityScore) &&
            const DeepCollectionEquality()
                .equals(other._emotionMap, _emotionMap) &&
            const DeepCollectionEquality()
                .equals(other._highlightMap, _highlightMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      displayName,
      personalityScore,
      const DeepCollectionEquality().hash(_emotionMap),
      const DeepCollectionEquality().hash(_highlightMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeakerDetailsImplCopyWith<_$SpeakerDetailsImpl> get copyWith =>
      __$$SpeakerDetailsImplCopyWithImpl<_$SpeakerDetailsImpl>(
          this, _$identity);
}

abstract class _SpeakerDetails extends SpeakerDetails {
  const factory _SpeakerDetails(
      {required final String displayName,
      required final String personalityScore,
      required final Map<String, String> emotionMap,
      required final Map<String, String> highlightMap}) = _$SpeakerDetailsImpl;
  const _SpeakerDetails._() : super._();

  @override
  String get displayName;
  @override
  String get personalityScore;
  @override
  Map<String, String> get emotionMap;
  @override
  Map<String, String> get highlightMap;
  @override
  @JsonKey(ignore: true)
  _$$SpeakerDetailsImplCopyWith<_$SpeakerDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
