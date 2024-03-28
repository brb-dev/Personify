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
            gradient: _gradient,
            corners: _corners,
            child: Container(
              height: 44,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColor.black,
                borderRadius: BorderRadius.circular(
                  22,
                ),
                boxShadow: _buttonShadow,
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
              child: const Text(
                'Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.',
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
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

  LinearGradient get _gradient => LinearGradient(
        begin: const Alignment(0.07, 0.08),
        end: const Alignment(1, 0.81),
        colors: [
          AppColor.black,
          AppColor.skyBlue,
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

  List<BoxShadow> get _buttonShadow => [
        BoxShadow(
          color: AppColor.skyBlue,
          spreadRadius: 3,
          blurRadius: 3,
          offset: const Offset(
            0,
            0,
          ),
        ),
      ];
}
