import 'package:flutter/material.dart';

import 'loading_shimmer/loading_shimmer.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, required this.msg, required this.icon});

  final String msg;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingShimmer.withChild(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              height: 6,
            ),
            Text(msg),
          ],
        ),
      ),
    );
  }
}
