import 'package:flutter/material.dart';
import 'package:movix_pro/routes.dart';
import 'package:movix_pro/widgets/movix_logo.dart';
import 'package:movix_pro/widgets/primary_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const MovixLogo(),
                const SizedBox(height: 48),
                PrimaryButton(
                  label: 'Start',
                  onPressed: () => Navigator.pushNamed(context, Routes.signin),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
