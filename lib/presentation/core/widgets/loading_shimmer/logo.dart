part of 'loading_shimmer.dart';

class _Logo extends StatelessWidget {
  const _Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return _WithChild(
      enabled: true,
      child: CustomImageView(
        imagePath: AppAssets.personifyLogo,
        height: 30,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
