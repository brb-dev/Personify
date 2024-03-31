part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.init() = _Init;
  const factory PlayerEvent.updatePlayingStatus({required bool isPlaying}) =
      _UpdatePlayingStatus;
  const factory PlayerEvent.evaluateFileByteData({required String path}) =
      _EvaluateFileByteData;
  const factory PlayerEvent.changeRecordingStatus({required bool status}) =
      _ChangeRecordingStatus;
}
