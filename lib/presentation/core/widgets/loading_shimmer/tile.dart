part of 'loading_shimmer.dart';

class _Tile extends StatelessWidget {
  const _Tile({
    super.key,
    required this.enabled,
    required this.line,
  });
  final int line;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).colorScheme.onSurface,
        highlightColor: Theme.of(context).colorScheme.background,
        enabled: enabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List<Widget>.filled(
            line,
            Container(
              margin: const EdgeInsets.symmetric(vertical: 2.0),
              width: double.infinity,
              height: 8.0,
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ),
      ),
    );
  }
}
