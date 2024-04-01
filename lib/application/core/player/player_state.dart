part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const PlayerState._();

  const factory PlayerState({
    required bool isPlaying,
    required ByteData audioData,
    required String localFilePath,
    required bool isRecording,
  }) = _PlayerState;

  factory PlayerState.initial() => PlayerState(
        isPlaying: false,
        audioData: ByteData(0),
        localFilePath: '',
        isRecording: false,
      );
}
