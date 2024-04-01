part of 'show_more_bloc.dart';

@freezed
class ShowMoreState with _$ShowMoreState {
  const ShowMoreState._();

  const factory ShowMoreState({
    required bool isExpanded,
  }) = _ShowMoreState;

  factory ShowMoreState.initial() => const ShowMoreState(
        isExpanded: false,
      );
}
