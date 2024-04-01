import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_more_bloc.freezed.dart';
part 'show_more_event.dart';
part 'show_more_state.dart';

class ShowMoreBloc extends Bloc<ShowMoreEvent, ShowMoreState> {
  ShowMoreBloc() : super(ShowMoreState.initial()) {
    on<ShowMoreEvent>(_onEvent);
  }

  Future<void> _onEvent(
      ShowMoreEvent event, Emitter<ShowMoreState> emit) async {
    await event.map(
      init: (_) async => emit(ShowMoreState.initial()),
      showMore: (_) async => emit(state.copyWith(isExpanded: true)),
      showLess: (_) async => emit(state.copyWith(isExpanded: false)),
    );
  }
}
