import 'dart:io';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

part 'player_bloc.freezed.dart';
part 'player_event.dart';
part 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerState.initial()) {
    on<PlayerEvent>(_onEvent);
  }

  Future<void> _onEvent(PlayerEvent event, Emitter<PlayerState> emit) async {
    await event.map(
      init: (_) async => emit(PlayerState.initial()),
      evaluateFileByteData: (value) async {
        final File file = File(value.path);
        Uint8List bytes = file.readAsBytesSync();
        emit(
          state.copyWith(
            localFilePath: value.path,
            audioData: ByteData.view(bytes.buffer),
          ),
        );
      },
      updatePlayingStatus: (value) async => emit(
        state.copyWith(
          isPlaying: value.isPlaying,
        ),
      ),
      changeRecordingStatus: (value) async {
        final Directory directory = await getApplicationDocumentsDirectory();

        if (value.status) {
          final File file = File('${directory.path}/audio.mp3');
          emit(
            state.copyWith(
              isRecording: value.status,
              localFilePath: file.path,
            ),
          );
          //add(PlayerEvent.evaluateFileByteData(path: file.path));
        } else {
          emit(
            state.copyWith(
              isRecording: value.status,
            ),
          );
          // add(PlayerEvent.evaluateFileByteData(path: state.localFilePath));
        }
      },
    );
  }
}
