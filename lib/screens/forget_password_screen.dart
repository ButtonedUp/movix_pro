import 'package:flutter/material.dart';
import 'package:movix_pro/routes.dart';
import 'package:movix_pro/widgets/primary_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reset Password')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Enter your email to receive a verification code.',
                style: TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email address',
                  hintText: 'name@example.com',
                ),
              ),
              const Spacer(),
              PrimaryButton(
                label: 'Next',
                onPressed: () => Navigator.pushNamed(context, Routes.otp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
