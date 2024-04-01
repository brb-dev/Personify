part of '../ind_record_screen.dart';

class _HighlightSection extends StatelessWidget {
  const _HighlightSection({
    super.key,
    required this.title,
    required this.answer,
  });

  final String title;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 21),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 9),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: OutlineGradientButton(
            padding: const EdgeInsets.only(
              left: 1,
              top: 1,
              right: 1,
              bottom: 1,
            ),
            strokeWidth: 1,
            gradient: LinearGradient(
              begin: const Alignment(0.07, 0.08),
              end: const Alignment(1, 0.81),
              colors: Constants.linearGradientColorSet3(
                context: context,
              ),
            ),
            corners: const Corners(
              topLeft: Radius.circular(22),
              topRight: Radius.circular(22),
              bottomLeft: Radius.circular(22),
              bottomRight: Radius.circular(22),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ReadMoreText(
                answer,
                trimMode: TrimMode.Line,
                trimLines: 2,
                colorClickableText:
                    Theme.of(context).colorScheme.inversePrimary,
                trimCollapsedText: StringConstants.showMore,
                trimExpandedText: StringConstants.showLess,
                lessStyle: Theme.of(context).textTheme.labelMedium,
                moreStyle: Theme.of(context).textTheme.labelMedium,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
