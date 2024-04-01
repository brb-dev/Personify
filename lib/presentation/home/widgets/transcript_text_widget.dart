part of '../ind_record_screen.dart';

class _TranscriptTextWidget extends StatelessWidget {
  const _TranscriptTextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IndRecordBloc, IndRecordState>(
      listenWhen: (previous, current) =>
          previous.apiFailureOrSuccessOption !=
          current.apiFailureOrSuccessOption,
      listener: (context, state) {
        state.apiFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showTopSnackBar(
                Overlay.of(context),
                const CustomSnackBar.error(
                  message: StringConstants.errorFetchingTranscript,
                ),
              );
            },
            (_) {},
          ),
        );
      },
      buildWhen: (previous, current) =>
          previous.isTranscriptFetching != current.isTranscriptFetching ||
          previous.isSummaryFetching != current.isSummaryFetching ||
          previous.tappedButton != current.tappedButton,
      builder: (context, state) {
        return Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: state.isFetchingTranscriptOrSummary
                ? LoadingWidget(
                    msg: state.fetchingMessage,
                    icon: const Icon(
                      Icons.dataset,
                    ),
                  )
                : state.transcript.transcript.isEmpty
                    ? const Center(
                        child: Text(
                          StringConstants.pleaseRecord,
                          textAlign: TextAlign.center,
                        ),
                      )
                    : state.tappedButton == TappedButton.fullText
                        ? _ShowTranscriptOrSummary(
                            msg: state.transcript.transcript,
                          )
                        : state.tappedButton == TappedButton.fullSummary
                            ? _ShowTranscriptOrSummary(
                                msg: state.transcript.summary,
                              )
                            : const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}

class _ShowTranscriptOrSummary extends StatelessWidget {
  const _ShowTranscriptOrSummary({
    super.key,
    required this.msg,
  });

  final String msg;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      msg,
      trimMode: TrimMode.Line,
      trimLines: 4,
      colorClickableText: Theme.of(context).colorScheme.inversePrimary,
      trimCollapsedText: StringConstants.showMore,
      trimExpandedText: StringConstants.showLess,
      lessStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      moreStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
