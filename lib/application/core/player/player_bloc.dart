import 'dart:io';
import 'dart:async';
import 'dart:typed_data';

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
        final Directory directory = await getApplicationDocumentsDirectory();
        final File file = File('${directory.path}/audio.mp3');
        ByteData byteData = await rootBundle.load('assets/audio/audio.mp3');
        await file.writeAsBytes(byteData.buffer.asUint8List());
        emit(
          state.copyWith(
            localFilePath: file.path,
            audioData: byteData,
          ),
        );
      },
      updatePlayingStatus: (value) async => emit(
        state.copyWith(
          isPlaying: value.isPlaying,
        ),
      ),
    );
  }
}
