import 'package:flutter/material.dart';

import '../custom_image_view.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({
    super.key,
    required this.imagePath,
    required this.label,
    required this.onPressed,
  });

  final String imagePath;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 60,
      child: ElevatedButton.icon(
        icon: CustomImageView(
          imagePath: imagePath,
          height: 30,
          width: 30,
        ),
        onPressed: onPressed,
        label: Text(label),
      ),
    );
  }
}
