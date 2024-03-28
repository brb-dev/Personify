part of '../ind_record_screen.dart';

class _PersonalityScore extends StatelessWidget {
  const _PersonalityScore({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        12,
      ),
      decoration: BoxDecoration(
        color: AppColor.gradient1,
        border: Border.all(
          color: AppColor.white,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(
          20,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColor.gradient1.withOpacity(0.13),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              4,
              4,
            ),
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: CustomIconButton(
              height: 45,
              width: 46,
              padding: const EdgeInsets.all(13),
              decoration: IconButtonStyleHelper.fillLightBlueA,
              child: CustomImageView(
                imagePath: AppAssets.graphIcon,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              bottom: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Personality Score",
                  //style: CustomTextStyles.bodySmall11,
                ),
                const SizedBox(height: 4),
                SizedBox(
                  width: 38,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "8",
                          // style: theme.textTheme.headlineSmall,
                        ),
                        TextSpan(
                          text: "/10",
                          // style: CustomTextStyles.bodyMediumffffffff,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
