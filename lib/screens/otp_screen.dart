import 'package:flutter/material.dart';
import 'package:movix_pro/routes.dart';
import 'package:movix_pro/widgets/primary_button.dart';
import 'package:movix_pro/theme/app_theme.dart';

class OtpBox extends StatelessWidget {
  final TextEditingController controller;
  const OtpBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 54,
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: const InputDecoration(
          counterText: '',
        ),
      ),
    );
  }
}

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final c1 = TextEditingController();
  final c2 = TextEditingController();
  final c3 = TextEditingController();
  final c4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verifying your Account')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Text(
                'We’ve sent a 4-digit code to your email.',
                style: TextStyle(color: AppColors.textSecondary),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpBox(controller: c1),
                  OtpBox(controller: c2),
                  OtpBox(controller: c3),
                  OtpBox(controller: c4),
                ],
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () {},
                child: const Text('Resend'),
              ),
              const Spacer(),
              PrimaryButton(
                label: 'Continue',
                onPressed: () => Navigator.pushNamed(context, Routes.reset),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
