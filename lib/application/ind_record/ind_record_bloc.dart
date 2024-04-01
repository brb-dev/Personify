import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

import '../../domain/core/error/api_failure.dart';
import '../../domain/ind_record/entities/ind_record_entity.dart';
import '../../domain/ind_record/entities/transcript_entity.dart';
import '../../domain/ind_record/repository/i_ind_record_repository.dart';

part 'ind_record_bloc.freezed.dart';
part 'ind_record_event.dart';
part 'ind_record_state.dart';

class IndRecordBloc extends Bloc<IndRecordEvent, IndRecordState> {
  final IIndRecordRepository indRecordRepository;
  IndRecordBloc({
    required this.indRecordRepository,
  }) : super(IndRecordState.initial()) {
    on<IndRecordEvent>(_onEvent);
  }

  Future<void> _onEvent(
      IndRecordEvent event, Emitter<IndRecordState> emit) async {
    await event.map(
      init: (_) async => emit(IndRecordState.initial()),
      fetchData: (_) async {
        emit(
          state.copyWith(
            isFetching: true,
            apiFailureOrSuccessOption: none(),
          ),
        );

        final recordOrError = await indRecordRepository.fetchIndRecord();
        recordOrError.fold(
          (error) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(recordOrError),
            ),
          ),
          (success) => emit(
            state.copyWith(
              isFetching: false,
              data: success,
            ),
          ),
        );
      },
      fetchTranscript: (value) async {
        emit(
          state.copyWith(
            isTranscriptFetching: true,
            apiFailureOrSuccessOption: none(),
          ),
        );
        final Directory directory = await getApplicationDocumentsDirectory();
        final File file = File('${directory.path}/audio.mp3');
        final recordOrError = await indRecordRepository.fetchTranscript(
          audioFile: file,
          datagrapApiKey: value.datagramApiKey,
        );
        recordOrError.fold(
          (error) => emit(
            state.copyWith(
              isTranscriptFetching: false,
              apiFailureOrSuccessOption: optionOf(recordOrError),
            ),
          ),
          (success) {
            emit(
              state.copyWith(
                isTranscriptFetching: false,
                transcript: success,
                isFullTextTapped: true,
                tappedButton: TappedButton.fullText,
              ),
            );
            add(const IndRecordEvent.fetchData());
          },
        );
      },
      fetchSummary: (value) async {
        emit(
          state.copyWith(
            isSummaryFetching: true,
            apiFailureOrSuccessOption: none(),
          ),
        );
        final recordOrError = await indRecordRepository.fetchSummary(
          transcript: state.transcript.transcript,
          opeAIApiKey: value.openAiApiKey,
        );
        recordOrError.fold(
          (error) => emit(
            state.copyWith(
              isSummaryFetching: false,
              apiFailureOrSuccessOption: optionOf(recordOrError),
            ),
          ),
          (success) {
            final transcriptWithSummary =
                state.transcript.copyWith(summary: success);
            emit(
              state.copyWith(
                isSummaryFetching: false,
                transcript: transcriptWithSummary,
                tappedButton: TappedButton.fullSummary,
              ),
            );
          },
        );
      },
    );
  }
}
