part of '../ind_record_screen.dart';

class _PersonalityScoreResult extends StatefulWidget {
  @override
  State<_PersonalityScoreResult> createState() =>
      _PersonalityScoreResultState();
}

class _PersonalityScoreResultState extends State<_PersonalityScoreResult>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    );
    _animation = _controller;

    super.initState();
    setState(() {
      _animation = Tween<double>(
        begin: _animation.value,
        end: 8,
      ).animate(CurvedAnimation(
        curve: Curves.fastOutSlowIn,
        parent: _controller,
      ));
      _controller.forward(from: 1.0);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: _animation.value.toInt().toString(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
              TextSpan(
                text: "/10",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        );
      },
    );
  }
}
