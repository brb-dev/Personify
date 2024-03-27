part of 'loading_shimmer.dart';

class _WithChild extends StatelessWidget {
  const _WithChild({
    super.key,
    required this.child,
    required this.enabled,
  });
  final Widget child;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    if (!enabled) return Center(child: child);

    return Center(
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).colorScheme.onSurface,
        highlightColor: Theme.of(context).colorScheme.background,
        enabled: true,
        child: child,
      ),
    );
  }
}
