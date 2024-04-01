part of '../ind_record_screen.dart';

class _IndTabSection extends StatelessWidget {
  const _IndTabSection({
    super.key,
    required this.speaker,
  });

  final SpeakerDetails speaker;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: BlocBuilder<IndRecordBloc, IndRecordState>(
            buildWhen: (previous, current) =>
                previous.isFetching != current.isFetching,
            builder: (context, state) {
              return Column(
                children: [
                  Text(
                    StringConstants.smallQuote,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).canvasColor,
                        ),
                  ),
                  const SizedBox(height: 10),
                  const _PersonalityScore(),
                  const SizedBox(height: 10),
                  for (var i = 0;
                      i < speaker.emotionMap.entries.length;
                      i = i + 2)
                    _PersonalityRowItem(
                      map1: speaker.emotionMap.entries.elementAt(i),
                      map2: speaker.emotionMap.entries.length % 2 != 0 &&
                              i == speaker.emotionMap.entries.length - 1
                          ? null
                          : speaker.emotionMap.entries.elementAt(i + 1),
                    ),
                  ...speaker.highlightMap.entries.map(
                    (e) => _HighlightSection(
                      title: e.key,
                      answer: e.value,
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              );
            }),
      ),
    );
  }
}

class _PersonalityRowItem extends StatelessWidget {
  const _PersonalityRowItem({
    required this.map1,
    this.map2,
  });
  final MapEntry map1;
  final MapEntry? map2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _EmotionIndicator(
              title: map1.key,
              rating: map1.value,
            ),
            map2 != null
                ? _EmotionIndicator(
                    title: map2!.key,
                    rating: map2!.value,
                    isLeft: false,
                  )
                : Container(
                    padding: const EdgeInsets.only(left: 11),
                    width: 144,
                  ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
