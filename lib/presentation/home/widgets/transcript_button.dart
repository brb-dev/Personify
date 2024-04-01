part of '../ind_record_screen.dart';

class _TranscriptButton extends StatelessWidget {
  const _TranscriptButton({
    super.key,
    required this.isFullText,
  });
  final bool isFullText;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IndRecordBloc, IndRecordState>(
      buildWhen: (previous, current) =>
          previous.transcript.transcript != current.transcript.transcript,
      builder: (context, state) {
        return ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
            side: MaterialStateProperty.resolveWith<BorderSide>(
              (_) {
                return BorderSide(
                  color: _borderColor(context: context, state: state),
                );
              },
            ),
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
              (_) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                );
              },
            ),
          ),
          onPressed: state.transcript.transcript.isEmpty ||
                  state.transcript.summary.isEmpty
              ? null
              : () => _handleButtonClick(context: context),
          child: Text(
            isFullText ? 'Full Text' : 'Full Summary',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        );
      },
    );
  }

  void _handleButtonClick({required BuildContext context}) {
    if (isFullText) {
    } else {
      context.read<IndRecordBloc>().add(IndRecordEvent.fetchSummary(
          openAiApiKey: context.read<AuthBloc>().state.user?.openAIKey ?? ''));
    }
  }

  Color _borderColor({
    required BuildContext context,
    required IndRecordState state,
  }) =>
      isFullText
          ? state.isFullTextTapped
              ? Theme.of(context).colorScheme.secondary
              : state.transcript.transcript.isEmpty
                  ? Theme.of(context).colorScheme.background
                  : Theme.of(context).canvasColor
          : state.isFullSummaryTapped
              ? Theme.of(context).colorScheme.secondary
              : state.transcript.summary.isEmpty
                  ? Theme.of(context).colorScheme.background
                  : Theme.of(context).canvasColor;
}
