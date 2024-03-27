import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personify/application/auth/auth_bloc.dart';

@RoutePage()
class IndRecordScreen extends StatelessWidget {
  const IndRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (previous, current) => previous.user != current.user,
        builder: (context, state) {
          return Center(
            child: Text(
              'Hello ${state.user?.displayName}',
            ),
          );
        },
      ),
    );
  }
}
