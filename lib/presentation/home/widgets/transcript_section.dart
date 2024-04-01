part of '../ind_record_screen.dart';

class _TranscriptSection extends StatelessWidget {
  const _TranscriptSection({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final a = width * 0.09;
    print('Width===>$width');
    print('Length===>${_text.length}');
    return Container(
      height: MediaQuery.of(context).size.height * 0.3 + 70,
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
                    const _TranscriptTextWidget(),
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
  }

  String get _text =>
      'Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.';

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
