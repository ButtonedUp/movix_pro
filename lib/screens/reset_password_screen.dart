import 'package:flutter/material.dart';
import 'package:movix_pro/widgets/primary_button.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final pass1 = TextEditingController();
  final pass2 = TextEditingController();
  bool o1 = true;
  bool o2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create New Password')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: pass1,
                obscureText: o1,
                decoration: InputDecoration(
                  labelText: 'New password',
                  suffixIcon: IconButton(
                    onPressed: () => setState(() => o1 = !o1),
                    icon: Icon(o1 ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: pass2,
                obscureText: o2,
                decoration: InputDecoration(
                  labelText: 'Confirm password',
                  suffixIcon: IconButton(
                    onPressed: () => setState(() => o2 = !o2),
                    icon: Icon(o2 ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
              ),
              const Spacer(),
              PrimaryButton(label: 'Reset', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
