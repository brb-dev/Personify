import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personify/application/auth/auth_bloc.dart';
import 'package:personify/presentation/core/app_asset.dart';
import 'package:personify/presentation/core/widgets/buttons/signin_button.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../core/widgets/loading_shimmer/loading_shimmer.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoadingShimmer.withChild(
              enabled: false,
              child: SigninButton(
                imagePath: AppAssets.googleIcon,
                label: 'Google Auth',
                onPressed: () {
                  context
                      .read<AuthBloc>()
                      .add(const AuthEvent.signinWithGoogle());
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            LoadingShimmer.withChild(
              enabled: false,
              child: SigninButton(
                imagePath: AppAssets.appleIcon,
                label: 'Apple Auth',
                onPressed: () => showTopSnackBar(
                  Overlay.of(context),
                  const CustomSnackBar.error(
                    message:
                        'Apple auth has not been implemented as it was not part of the test.',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
