part of 'ind_record_bloc.dart';

enum TappedButton {
  fullText,
  fullSummary,
  none,
}

@freezed
class IndRecordState with _$IndRecordState {
  const IndRecordState._();

  const factory IndRecordState({
    required bool isFetching,
    required bool isTranscriptFetching,
    required bool isSummaryFetching,
    required bool isFullTextTapped,
    required bool isFullSummaryTapped,
    required bool isExpanded,
    required IndRecord data,
    required Transcript transcript,
    required TappedButton tappedButton,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
  }) = _IndRecordState;

  factory IndRecordState.initial() => IndRecordState(
        isFetching: false,
        isTranscriptFetching: false,
        isSummaryFetching: false,
        isFullTextTapped: false,
        isFullSummaryTapped: false,
        isExpanded: false,
        data: IndRecord.empty(),
        transcript: Transcript.empty(),
        tappedButton: TappedButton.none,
        apiFailureOrSuccessOption: none(),
      );

  bool get isFetchingTranscriptOrSummary =>
      isTranscriptFetching || isSummaryFetching;

  String get fetchingMessage => isTranscriptFetching
      ? 'Fetching Transcript'
      : isSummaryFetching
          ? 'Fetching Summary'
          : 'Something is getting fetched';
}
