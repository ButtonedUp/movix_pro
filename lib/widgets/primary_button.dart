import 'package:flutter/material.dart';
import 'package:movix_pro/theme/app_theme.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool expand;
  final double height;
  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.expand = true,
    this.height = 56,
  });

  @override
  Widget build(BuildContext context) {
    final child = Container(
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: AppColors.buttonGrad,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
    );

    return SizedBox(
      width: expand ? double.infinity : null,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onPressed,
        child: child,
      ),
    );
  }
}
