// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isPlaying) updatePlayingStatus,
    required TResult Function() evaluateFileByteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isPlaying)? updatePlayingStatus,
    TResult? Function()? evaluateFileByteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isPlaying)? updatePlayingStatus,
    TResult Function()? evaluateFileByteData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdatePlayingStatus value) updatePlayingStatus,
    required TResult Function(_EvaluateFileByteData value) evaluateFileByteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult? Function(_EvaluateFileByteData value)? evaluateFileByteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult Function(_EvaluateFileByteData value)? evaluateFileByteData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res, PlayerEvent>;
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res, $Val extends PlayerEvent>
    implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'PlayerEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isPlaying) updatePlayingStatus,
    required TResult Function() evaluateFileByteData,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isPlaying)? updatePlayingStatus,
    TResult? Function()? evaluateFileByteData,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isPlaying)? updatePlayingStatus,
    TResult Function()? evaluateFileByteData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdatePlayingStatus value) updatePlayingStatus,
    required TResult Function(_EvaluateFileByteData value) evaluateFileByteData,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult? Function(_EvaluateFileByteData value)? evaluateFileByteData,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult Function(_EvaluateFileByteData value)? evaluateFileByteData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements PlayerEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$UpdatePlayingStatusImplCopyWith<$Res> {
  factory _$$UpdatePlayingStatusImplCopyWith(_$UpdatePlayingStatusImpl value,
          $Res Function(_$UpdatePlayingStatusImpl) then) =
      __$$UpdatePlayingStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPlaying});
}

/// @nodoc
class __$$UpdatePlayingStatusImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$UpdatePlayingStatusImpl>
    implements _$$UpdatePlayingStatusImplCopyWith<$Res> {
  __$$UpdatePlayingStatusImplCopyWithImpl(_$UpdatePlayingStatusImpl _value,
      $Res Function(_$UpdatePlayingStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
  }) {
    return _then(_$UpdatePlayingStatusImpl(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdatePlayingStatusImpl implements _UpdatePlayingStatus {
  const _$UpdatePlayingStatusImpl({required this.isPlaying});

  @override
  final bool isPlaying;

  @override
  String toString() {
    return 'PlayerEvent.updatePlayingStatus(isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePlayingStatusImpl &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPlaying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePlayingStatusImplCopyWith<_$UpdatePlayingStatusImpl> get copyWith =>
      __$$UpdatePlayingStatusImplCopyWithImpl<_$UpdatePlayingStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isPlaying) updatePlayingStatus,
    required TResult Function() evaluateFileByteData,
  }) {
    return updatePlayingStatus(isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isPlaying)? updatePlayingStatus,
    TResult? Function()? evaluateFileByteData,
  }) {
    return updatePlayingStatus?.call(isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isPlaying)? updatePlayingStatus,
    TResult Function()? evaluateFileByteData,
    required TResult orElse(),
  }) {
    if (updatePlayingStatus != null) {
      return updatePlayingStatus(isPlaying);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdatePlayingStatus value) updatePlayingStatus,
    required TResult Function(_EvaluateFileByteData value) evaluateFileByteData,
  }) {
    return updatePlayingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult? Function(_EvaluateFileByteData value)? evaluateFileByteData,
  }) {
    return updatePlayingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult Function(_EvaluateFileByteData value)? evaluateFileByteData,
    required TResult orElse(),
  }) {
    if (updatePlayingStatus != null) {
      return updatePlayingStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdatePlayingStatus implements PlayerEvent {
  const factory _UpdatePlayingStatus({required final bool isPlaying}) =
      _$UpdatePlayingStatusImpl;

  bool get isPlaying;
  @JsonKey(ignore: true)
  _$$UpdatePlayingStatusImplCopyWith<_$UpdatePlayingStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EvaluateFileByteDataImplCopyWith<$Res> {
  factory _$$EvaluateFileByteDataImplCopyWith(_$EvaluateFileByteDataImpl value,
          $Res Function(_$EvaluateFileByteDataImpl) then) =
      __$$EvaluateFileByteDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvaluateFileByteDataImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$EvaluateFileByteDataImpl>
    implements _$$EvaluateFileByteDataImplCopyWith<$Res> {
  __$$EvaluateFileByteDataImplCopyWithImpl(_$EvaluateFileByteDataImpl _value,
      $Res Function(_$EvaluateFileByteDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EvaluateFileByteDataImpl implements _EvaluateFileByteData {
  const _$EvaluateFileByteDataImpl();

  @override
  String toString() {
    return 'PlayerEvent.evaluateFileByteData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvaluateFileByteDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isPlaying) updatePlayingStatus,
    required TResult Function() evaluateFileByteData,
  }) {
    return evaluateFileByteData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isPlaying)? updatePlayingStatus,
    TResult? Function()? evaluateFileByteData,
  }) {
    return evaluateFileByteData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isPlaying)? updatePlayingStatus,
    TResult Function()? evaluateFileByteData,
    required TResult orElse(),
  }) {
    if (evaluateFileByteData != null) {
      return evaluateFileByteData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdatePlayingStatus value) updatePlayingStatus,
    required TResult Function(_EvaluateFileByteData value) evaluateFileByteData,
  }) {
    return evaluateFileByteData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult? Function(_EvaluateFileByteData value)? evaluateFileByteData,
  }) {
    return evaluateFileByteData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult Function(_EvaluateFileByteData value)? evaluateFileByteData,
    required TResult orElse(),
  }) {
    if (evaluateFileByteData != null) {
      return evaluateFileByteData(this);
    }
    return orElse();
  }
}

abstract class _EvaluateFileByteData implements PlayerEvent {
  const factory _EvaluateFileByteData() = _$EvaluateFileByteDataImpl;
}

/// @nodoc
mixin _$PlayerState {
  bool get isPlaying => throw _privateConstructorUsedError;
  ByteData get audioData => throw _privateConstructorUsedError;
  String get localFilePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerStateCopyWith<PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
  @useResult
  $Res call({bool isPlaying, ByteData audioData, String localFilePath});
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
    Object? audioData = null,
    Object? localFilePath = null,
  }) {
    return _then(_value.copyWith(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      audioData: null == audioData
          ? _value.audioData
          : audioData // ignore: cast_nullable_to_non_nullable
              as ByteData,
      localFilePath: null == localFilePath
          ? _value.localFilePath
          : localFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerStateImplCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$$PlayerStateImplCopyWith(
          _$PlayerStateImpl value, $Res Function(_$PlayerStateImpl) then) =
      __$$PlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPlaying, ByteData audioData, String localFilePath});
}

/// @nodoc
class __$$PlayerStateImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateImpl>
    implements _$$PlayerStateImplCopyWith<$Res> {
  __$$PlayerStateImplCopyWithImpl(
      _$PlayerStateImpl _value, $Res Function(_$PlayerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
    Object? audioData = null,
    Object? localFilePath = null,
  }) {
    return _then(_$PlayerStateImpl(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      audioData: null == audioData
          ? _value.audioData
          : audioData // ignore: cast_nullable_to_non_nullable
              as ByteData,
      localFilePath: null == localFilePath
          ? _value.localFilePath
          : localFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerStateImpl extends _PlayerState {
  const _$PlayerStateImpl(
      {required this.isPlaying,
      required this.audioData,
      required this.localFilePath})
      : super._();

  @override
  final bool isPlaying;
  @override
  final ByteData audioData;
  @override
  final String localFilePath;

  @override
  String toString() {
    return 'PlayerState(isPlaying: $isPlaying, audioData: $audioData, localFilePath: $localFilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateImpl &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.audioData, audioData) ||
                other.audioData == audioData) &&
            (identical(other.localFilePath, localFilePath) ||
                other.localFilePath == localFilePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isPlaying, audioData, localFilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      __$$PlayerStateImplCopyWithImpl<_$PlayerStateImpl>(this, _$identity);
}

abstract class _PlayerState extends PlayerState {
  const factory _PlayerState(
      {required final bool isPlaying,
      required final ByteData audioData,
      required final String localFilePath}) = _$PlayerStateImpl;
  const _PlayerState._() : super._();

  @override
  bool get isPlaying;
  @override
  ByteData get audioData;
  @override
  String get localFilePath;
  @override
  @JsonKey(ignore: true)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
