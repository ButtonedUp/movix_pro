import 'package:flutter/material.dart';
import 'package:movix_pro/screens/forget_password_screen.dart';
import 'package:movix_pro/screens/home_page.dart';
import 'package:movix_pro/screens/welcome_screen.dart';
import 'package:movix_pro/screens/signin_screen.dart';
import 'package:movix_pro/screens/signup_screen.dart';
import 'package:movix_pro/screens/otp_screen.dart';
import 'package:movix_pro/screens/reset_password_screen.dart';
import 'package:movix_pro/screens/profile_screen.dart';

class Routes {
  static const welcome = '/';
  static const signin = '/signin';
  static const signup = '/signup';
  static const forgot = '/forgot';
  static const otp = '/otp';
  static const reset = '/reset';
  static const home = '/home';
  static const profile = '/profile';

  static Map<String, WidgetBuilder> get map => {
    welcome: (_) => const WelcomeScreen(),
    signin: (_) => const SignInScreen(),
    signup: (_) => const SignUpScreen(),
    forgot: (_) => const ForgotPasswordScreen(),
    otp: (_) => const OtpScreen(),
    reset: (_) => const ResetPasswordScreen(),
    home: (_) => const home_page(),
    profile: (_) => const ProfileScreen(),
  };
}
