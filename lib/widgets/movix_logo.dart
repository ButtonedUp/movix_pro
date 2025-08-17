import 'package:flutter/material.dart';
import 'package:movix_pro/widgets/gradient_text.dart';

class MovixLogo extends StatelessWidget {
  final double size;
  final double spacing;

  const MovixLogo({super.key, this.size = 84, this.spacing = 8});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo1.png',
          height: size,
        ),
        SizedBox(height: spacing),
        const Text("Welcome to",
            style: TextStyle(fontSize: 16, color: Colors.white70)),
        const SizedBox(height: 6),
        const GradientText(
          "MOVIX PRO",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.w800, letterSpacing: 1.2),
        ),
      ],
    );
  }
}
