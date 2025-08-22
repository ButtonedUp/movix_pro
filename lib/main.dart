import 'package:flutter/material.dart';
import 'package:movix_pro/routes.dart';
import 'package:movix_pro/theme/app_theme.dart';

void main() {
  runApp(const MovixProApp());
}

class MovixProApp extends StatelessWidget {
  const MovixProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MOVIX PRO',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      initialRoute: Routes.home,
      routes: Routes.map,
    );
  }
}
