part of '../ind_record_screen.dart';

class _TranscriptSection extends StatelessWidget {
  const _TranscriptSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * 0.3,
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
          OutlineGradientButton(
            padding: const EdgeInsets.only(
              left: 1,
              top: 1,
              right: 1,
              bottom: 1,
            ),
            strokeWidth: 1,
            gradient: _gradient(context: context),
            corners: _corners,
            child: Container(
              height: 44,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(
                  22,
                ),
                boxShadow: _buttonShadow(context: context),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: AppAssets.playImage,
                  ),
                  CustomImageView(
                    imagePath: AppAssets.soundWaveImage,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ReadMoreText(
                'Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.',
                trimMode: TrimMode.Line,
                trimLines: 4,
                colorClickableText:
                    Theme.of(context).colorScheme.inversePrimary,
                trimCollapsedText: 'Show more',
                trimExpandedText: '...Show less',
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
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Full Text'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Full Summary'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Corners get _corners => const Corners(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
        bottomLeft: Radius.circular(22),
        bottomRight: Radius.circular(22),
      );

  LinearGradient _gradient({required BuildContext context}) => LinearGradient(
        begin: const Alignment(0.07, 0.08),
        end: const Alignment(1, 0.81),
        colors: [
          Theme.of(context).primaryColor,
          Theme.of(context).colorScheme.inversePrimary,
        ],
      );

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

  List<BoxShadow> _buttonShadow({required BuildContext context}) => [
        BoxShadow(
          color: Theme.of(context).colorScheme.inversePrimary,
          spreadRadius: 3,
          blurRadius: 3,
          offset: const Offset(
            0,
            0,
          ),
        ),
      ];
}
