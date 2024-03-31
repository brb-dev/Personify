// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speaker_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpeakerDetailsDto _$SpeakerDetailsDtoFromJson(Map<String, dynamic> json) {
  return _SpeakerDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$SpeakerDetailsDto {
  @JsonKey(name: 'displayName', defaultValue: '')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'personalityScore', defaultValue: '')
  String get personalityScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'emotionMap', defaultValue: <String, String>{})
  Map<String, String> get emotionMap => throw _privateConstructorUsedError;
  @JsonKey(name: 'highlightMap', defaultValue: <String, String>{})
  Map<String, String> get highlightMap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeakerDetailsDtoCopyWith<SpeakerDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakerDetailsDtoCopyWith<$Res> {
  factory $SpeakerDetailsDtoCopyWith(
          SpeakerDetailsDto value, $Res Function(SpeakerDetailsDto) then) =
      _$SpeakerDetailsDtoCopyWithImpl<$Res, SpeakerDetailsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'displayName', defaultValue: '') String displayName,
      @JsonKey(name: 'personalityScore', defaultValue: '')
      String personalityScore,
      @JsonKey(name: 'emotionMap', defaultValue: <String, String>{})
      Map<String, String> emotionMap,
      @JsonKey(name: 'highlightMap', defaultValue: <String, String>{})
      Map<String, String> highlightMap});
}

/// @nodoc
class _$SpeakerDetailsDtoCopyWithImpl<$Res, $Val extends SpeakerDetailsDto>
    implements $SpeakerDetailsDtoCopyWith<$Res> {
  _$SpeakerDetailsDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$SpeakerDetailsDtoImplCopyWith<$Res>
    implements $SpeakerDetailsDtoCopyWith<$Res> {
  factory _$$SpeakerDetailsDtoImplCopyWith(_$SpeakerDetailsDtoImpl value,
          $Res Function(_$SpeakerDetailsDtoImpl) then) =
      __$$SpeakerDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'displayName', defaultValue: '') String displayName,
      @JsonKey(name: 'personalityScore', defaultValue: '')
      String personalityScore,
      @JsonKey(name: 'emotionMap', defaultValue: <String, String>{})
      Map<String, String> emotionMap,
      @JsonKey(name: 'highlightMap', defaultValue: <String, String>{})
      Map<String, String> highlightMap});
}

/// @nodoc
class __$$SpeakerDetailsDtoImplCopyWithImpl<$Res>
    extends _$SpeakerDetailsDtoCopyWithImpl<$Res, _$SpeakerDetailsDtoImpl>
    implements _$$SpeakerDetailsDtoImplCopyWith<$Res> {
  __$$SpeakerDetailsDtoImplCopyWithImpl(_$SpeakerDetailsDtoImpl _value,
      $Res Function(_$SpeakerDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? personalityScore = null,
    Object? emotionMap = null,
    Object? highlightMap = null,
  }) {
    return _then(_$SpeakerDetailsDtoImpl(
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
@JsonSerializable()
class _$SpeakerDetailsDtoImpl extends _SpeakerDetailsDto {
  const _$SpeakerDetailsDtoImpl(
      {@JsonKey(name: 'displayName', defaultValue: '')
      required this.displayName,
      @JsonKey(name: 'personalityScore', defaultValue: '')
      required this.personalityScore,
      @JsonKey(name: 'emotionMap', defaultValue: <String, String>{})
      required final Map<String, String> emotionMap,
      @JsonKey(name: 'highlightMap', defaultValue: <String, String>{})
      required final Map<String, String> highlightMap})
      : _emotionMap = emotionMap,
        _highlightMap = highlightMap,
        super._();

  factory _$SpeakerDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeakerDetailsDtoImplFromJson(json);

  @override
  @JsonKey(name: 'displayName', defaultValue: '')
  final String displayName;
  @override
  @JsonKey(name: 'personalityScore', defaultValue: '')
  final String personalityScore;
  final Map<String, String> _emotionMap;
  @override
  @JsonKey(name: 'emotionMap', defaultValue: <String, String>{})
  Map<String, String> get emotionMap {
    if (_emotionMap is EqualUnmodifiableMapView) return _emotionMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_emotionMap);
  }

  final Map<String, String> _highlightMap;
  @override
  @JsonKey(name: 'highlightMap', defaultValue: <String, String>{})
  Map<String, String> get highlightMap {
    if (_highlightMap is EqualUnmodifiableMapView) return _highlightMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_highlightMap);
  }

  @override
  String toString() {
    return 'SpeakerDetailsDto(displayName: $displayName, personalityScore: $personalityScore, emotionMap: $emotionMap, highlightMap: $highlightMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeakerDetailsDtoImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.personalityScore, personalityScore) ||
                other.personalityScore == personalityScore) &&
            const DeepCollectionEquality()
                .equals(other._emotionMap, _emotionMap) &&
            const DeepCollectionEquality()
                .equals(other._highlightMap, _highlightMap));
  }

  @JsonKey(ignore: true)
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
  _$$SpeakerDetailsDtoImplCopyWith<_$SpeakerDetailsDtoImpl> get copyWith =>
      __$$SpeakerDetailsDtoImplCopyWithImpl<_$SpeakerDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeakerDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _SpeakerDetailsDto extends SpeakerDetailsDto {
  const factory _SpeakerDetailsDto(
          {@JsonKey(name: 'displayName', defaultValue: '')
          required final String displayName,
          @JsonKey(name: 'personalityScore', defaultValue: '')
          required final String personalityScore,
          @JsonKey(name: 'emotionMap', defaultValue: <String, String>{})
          required final Map<String, String> emotionMap,
          @JsonKey(name: 'highlightMap', defaultValue: <String, String>{})
          required final Map<String, String> highlightMap}) =
      _$SpeakerDetailsDtoImpl;
  const _SpeakerDetailsDto._() : super._();

  factory _SpeakerDetailsDto.fromJson(Map<String, dynamic> json) =
      _$SpeakerDetailsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'displayName', defaultValue: '')
  String get displayName;
  @override
  @JsonKey(name: 'personalityScore', defaultValue: '')
  String get personalityScore;
  @override
  @JsonKey(name: 'emotionMap', defaultValue: <String, String>{})
  Map<String, String> get emotionMap;
  @override
  @JsonKey(name: 'highlightMap', defaultValue: <String, String>{})
  Map<String, String> get highlightMap;
  @override
  @JsonKey(ignore: true)
  _$$SpeakerDetailsDtoImplCopyWith<_$SpeakerDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
