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
      children: [
        const SizedBox(height: 21),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Text(
            title,
            // style: CustomTextStyles.bodyMediumGray600,
            textAlign: TextAlign.start,
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
              colors: [
                AppColor.skyBlue,
                AppColor.blue,
              ],
            ),
            corners: const Corners(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(answer),
            ),
          ),
        ),
      ],
    );
  }
}
