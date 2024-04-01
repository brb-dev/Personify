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
          previous.transcript.transcript != current.transcript.transcript ||
          previous.transcript.summary != current.transcript.summary ||
          previous.tappedButton != current.tappedButton,
      builder: (context, state) {
        return ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
            side: MaterialStateProperty.resolveWith<BorderSide>(
              (_) {
                return BorderSide(
                  color: state.tappedButton == TappedButton.fullSummary &&
                          !isFullText
                      ? Theme.of(context).colorScheme.secondary
                      : state.tappedButton == TappedButton.fullText &&
                              isFullText
                          ? Theme.of(context).colorScheme.secondary
                          : state.tappedButton == TappedButton.none
                              ? Theme.of(context).colorScheme.background
                              : Theme.of(context).canvasColor,
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
                  state.isFetchingTranscriptOrSummary
              ? null
              : () => _handleButtonClick(context: context),
          child: Text(
            isFullText ? StringConstants.fullText : StringConstants.fullSummary,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        );
      },
    );
  }

  void _handleButtonClick({required BuildContext context}) {
    if (isFullText) {
      context.read<IndRecordBloc>().add(
            IndRecordEvent.fetchTranscript(
              datagramApiKey:
                  context.read<AuthBloc>().state.user?.datagramKey ?? '',
            ),
          );
    } else {
      context.read<IndRecordBloc>().add(
            IndRecordEvent.fetchSummary(
              openAiApiKey:
                  context.read<AuthBloc>().state.user?.openAIKey ?? '',
            ),
          );
    }
  }
}
