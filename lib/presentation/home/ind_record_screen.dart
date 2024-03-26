import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class IndRecordScreen extends StatelessWidget {
  const IndRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      body: const Center(
        child: Text('Ind Record Page'),
      ),
    );
  }
}
