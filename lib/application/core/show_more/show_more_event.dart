part of 'show_more_bloc.dart';

@freezed
class ShowMoreEvent with _$ShowMoreEvent {
  const factory ShowMoreEvent.init() = _Init;
  const factory ShowMoreEvent.showMore() = _ShowMore;
  const factory ShowMoreEvent.showLess() = _ShowLess;
}
