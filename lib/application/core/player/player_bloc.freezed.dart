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
    required TResult Function(String path) evaluateFileByteData,
    required TResult Function(bool status) changeRecordingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isPlaying)? updatePlayingStatus,
    TResult? Function(String path)? evaluateFileByteData,
    TResult? Function(bool status)? changeRecordingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isPlaying)? updatePlayingStatus,
    TResult Function(String path)? evaluateFileByteData,
    TResult Function(bool status)? changeRecordingStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdatePlayingStatus value) updatePlayingStatus,
    required TResult Function(_EvaluateFileByteData value) evaluateFileByteData,
    required TResult Function(_ChangeRecordingStatus value)
        changeRecordingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult? Function(_EvaluateFileByteData value)? evaluateFileByteData,
    TResult? Function(_ChangeRecordingStatus value)? changeRecordingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult Function(_EvaluateFileByteData value)? evaluateFileByteData,
    TResult Function(_ChangeRecordingStatus value)? changeRecordingStatus,
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
    required TResult Function(String path) evaluateFileByteData,
    required TResult Function(bool status) changeRecordingStatus,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isPlaying)? updatePlayingStatus,
    TResult? Function(String path)? evaluateFileByteData,
    TResult? Function(bool status)? changeRecordingStatus,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isPlaying)? updatePlayingStatus,
    TResult Function(String path)? evaluateFileByteData,
    TResult Function(bool status)? changeRecordingStatus,
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
    required TResult Function(_ChangeRecordingStatus value)
        changeRecordingStatus,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult? Function(_EvaluateFileByteData value)? evaluateFileByteData,
    TResult? Function(_ChangeRecordingStatus value)? changeRecordingStatus,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult Function(_EvaluateFileByteData value)? evaluateFileByteData,
    TResult Function(_ChangeRecordingStatus value)? changeRecordingStatus,
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
    required TResult Function(String path) evaluateFileByteData,
    required TResult Function(bool status) changeRecordingStatus,
  }) {
    return updatePlayingStatus(isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isPlaying)? updatePlayingStatus,
    TResult? Function(String path)? evaluateFileByteData,
    TResult? Function(bool status)? changeRecordingStatus,
  }) {
    return updatePlayingStatus?.call(isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isPlaying)? updatePlayingStatus,
    TResult Function(String path)? evaluateFileByteData,
    TResult Function(bool status)? changeRecordingStatus,
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
    required TResult Function(_ChangeRecordingStatus value)
        changeRecordingStatus,
  }) {
    return updatePlayingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult? Function(_EvaluateFileByteData value)? evaluateFileByteData,
    TResult? Function(_ChangeRecordingStatus value)? changeRecordingStatus,
  }) {
    return updatePlayingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult Function(_EvaluateFileByteData value)? evaluateFileByteData,
    TResult Function(_ChangeRecordingStatus value)? changeRecordingStatus,
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
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$EvaluateFileByteDataImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$EvaluateFileByteDataImpl>
    implements _$$EvaluateFileByteDataImplCopyWith<$Res> {
  __$$EvaluateFileByteDataImplCopyWithImpl(_$EvaluateFileByteDataImpl _value,
      $Res Function(_$EvaluateFileByteDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$EvaluateFileByteDataImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EvaluateFileByteDataImpl implements _EvaluateFileByteData {
  const _$EvaluateFileByteDataImpl({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'PlayerEvent.evaluateFileByteData(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvaluateFileByteDataImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvaluateFileByteDataImplCopyWith<_$EvaluateFileByteDataImpl>
      get copyWith =>
          __$$EvaluateFileByteDataImplCopyWithImpl<_$EvaluateFileByteDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isPlaying) updatePlayingStatus,
    required TResult Function(String path) evaluateFileByteData,
    required TResult Function(bool status) changeRecordingStatus,
  }) {
    return evaluateFileByteData(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isPlaying)? updatePlayingStatus,
    TResult? Function(String path)? evaluateFileByteData,
    TResult? Function(bool status)? changeRecordingStatus,
  }) {
    return evaluateFileByteData?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isPlaying)? updatePlayingStatus,
    TResult Function(String path)? evaluateFileByteData,
    TResult Function(bool status)? changeRecordingStatus,
    required TResult orElse(),
  }) {
    if (evaluateFileByteData != null) {
      return evaluateFileByteData(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdatePlayingStatus value) updatePlayingStatus,
    required TResult Function(_EvaluateFileByteData value) evaluateFileByteData,
    required TResult Function(_ChangeRecordingStatus value)
        changeRecordingStatus,
  }) {
    return evaluateFileByteData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult? Function(_EvaluateFileByteData value)? evaluateFileByteData,
    TResult? Function(_ChangeRecordingStatus value)? changeRecordingStatus,
  }) {
    return evaluateFileByteData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult Function(_EvaluateFileByteData value)? evaluateFileByteData,
    TResult Function(_ChangeRecordingStatus value)? changeRecordingStatus,
    required TResult orElse(),
  }) {
    if (evaluateFileByteData != null) {
      return evaluateFileByteData(this);
    }
    return orElse();
  }
}

abstract class _EvaluateFileByteData implements PlayerEvent {
  const factory _EvaluateFileByteData({required final String path}) =
      _$EvaluateFileByteDataImpl;

  String get path;
  @JsonKey(ignore: true)
  _$$EvaluateFileByteDataImplCopyWith<_$EvaluateFileByteDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeRecordingStatusImplCopyWith<$Res> {
  factory _$$ChangeRecordingStatusImplCopyWith(
          _$ChangeRecordingStatusImpl value,
          $Res Function(_$ChangeRecordingStatusImpl) then) =
      __$$ChangeRecordingStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$ChangeRecordingStatusImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$ChangeRecordingStatusImpl>
    implements _$$ChangeRecordingStatusImplCopyWith<$Res> {
  __$$ChangeRecordingStatusImplCopyWithImpl(_$ChangeRecordingStatusImpl _value,
      $Res Function(_$ChangeRecordingStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ChangeRecordingStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeRecordingStatusImpl implements _ChangeRecordingStatus {
  const _$ChangeRecordingStatusImpl({required this.status});

  @override
  final bool status;

  @override
  String toString() {
    return 'PlayerEvent.changeRecordingStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRecordingStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRecordingStatusImplCopyWith<_$ChangeRecordingStatusImpl>
      get copyWith => __$$ChangeRecordingStatusImplCopyWithImpl<
          _$ChangeRecordingStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isPlaying) updatePlayingStatus,
    required TResult Function(String path) evaluateFileByteData,
    required TResult Function(bool status) changeRecordingStatus,
  }) {
    return changeRecordingStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isPlaying)? updatePlayingStatus,
    TResult? Function(String path)? evaluateFileByteData,
    TResult? Function(bool status)? changeRecordingStatus,
  }) {
    return changeRecordingStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isPlaying)? updatePlayingStatus,
    TResult Function(String path)? evaluateFileByteData,
    TResult Function(bool status)? changeRecordingStatus,
    required TResult orElse(),
  }) {
    if (changeRecordingStatus != null) {
      return changeRecordingStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdatePlayingStatus value) updatePlayingStatus,
    required TResult Function(_EvaluateFileByteData value) evaluateFileByteData,
    required TResult Function(_ChangeRecordingStatus value)
        changeRecordingStatus,
  }) {
    return changeRecordingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult? Function(_EvaluateFileByteData value)? evaluateFileByteData,
    TResult? Function(_ChangeRecordingStatus value)? changeRecordingStatus,
  }) {
    return changeRecordingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdatePlayingStatus value)? updatePlayingStatus,
    TResult Function(_EvaluateFileByteData value)? evaluateFileByteData,
    TResult Function(_ChangeRecordingStatus value)? changeRecordingStatus,
    required TResult orElse(),
  }) {
    if (changeRecordingStatus != null) {
      return changeRecordingStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeRecordingStatus implements PlayerEvent {
  const factory _ChangeRecordingStatus({required final bool status}) =
      _$ChangeRecordingStatusImpl;

  bool get status;
  @JsonKey(ignore: true)
  _$$ChangeRecordingStatusImplCopyWith<_$ChangeRecordingStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayerState {
  bool get isPlaying => throw _privateConstructorUsedError;
  ByteData get audioData => throw _privateConstructorUsedError;
  String get localFilePath => throw _privateConstructorUsedError;
  bool get isRecording => throw _privateConstructorUsedError;

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
  $Res call(
      {bool isPlaying,
      ByteData audioData,
      String localFilePath,
      bool isRecording});
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
    Object? isRecording = null,
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
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call(
      {bool isPlaying,
      ByteData audioData,
      String localFilePath,
      bool isRecording});
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
    Object? isRecording = null,
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
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlayerStateImpl extends _PlayerState {
  const _$PlayerStateImpl(
      {required this.isPlaying,
      required this.audioData,
      required this.localFilePath,
      required this.isRecording})
      : super._();

  @override
  final bool isPlaying;
  @override
  final ByteData audioData;
  @override
  final String localFilePath;
  @override
  final bool isRecording;

  @override
  String toString() {
    return 'PlayerState(isPlaying: $isPlaying, audioData: $audioData, localFilePath: $localFilePath, isRecording: $isRecording)';
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
                other.localFilePath == localFilePath) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isPlaying, audioData, localFilePath, isRecording);

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
      required final String localFilePath,
      required final bool isRecording}) = _$PlayerStateImpl;
  const _PlayerState._() : super._();

  @override
  bool get isPlaying;
  @override
  ByteData get audioData;
  @override
  String get localFilePath;
  @override
  bool get isRecording;
  @override
  @JsonKey(ignore: true)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
