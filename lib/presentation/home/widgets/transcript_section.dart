part of '../ind_record_screen.dart';

class _TranscriptSection extends StatelessWidget {
  const _TranscriptSection({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IndRecordBloc, IndRecordState>(
        buildWhen: (previous, current) =>
            previous.isExpanded != current.isExpanded,
        builder: (context, state) {
          final textLength = state.tappedButton == TappedButton.fullText
              ? state.transcript.transcript.length
              : state.tappedButton == TappedButton.fullSummary
                  ? state.transcript.summary.length
                  : 0;
          final quocent = (textLength / 34) * 16;

          final lines = state.isExpanded ? quocent : 0;

          return Container(
            height: (MediaQuery.of(context).size.height * 0.3) + 75 + lines,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: Constants.linearGradientColorSet1(
                  context: context,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: _boxShadow(context: context),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          _PlayAudio(),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(child: _TranscriptTextWidget()),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _TranscriptButton(isFullText: true),
                              _TranscriptButton(isFullText: false)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  List<BoxShadow> _boxShadow({required BuildContext context}) => [
        BoxShadow(
          color: Theme.of(context).colorScheme.inversePrimary,
          offset: const Offset(
            0.0,
            5.0,
          ),
        ),
        BoxShadow(
          color: Theme.of(context).colorScheme.inversePrimary,
          offset: const Offset(
            0.0,
            -3.0,
          ),
        ),
      ];
}
