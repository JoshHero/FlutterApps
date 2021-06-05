
import 'package:get/get.dart';
import 'package:registration_app/screens/auth/login/login_screen.dart';
import 'package:registration_app/screens/auth/register/register_screen.dart';
import 'package:registration_app/screens/onboarding/onboarding_screen.dart';

import 'app_routes.dart';

class AppPages{
  static final pages = [
    GetPage(name: AppRoutes.onBoardingScreen, page: ()=> OnboardingScreen()),
    GetPage(name: AppRoutes.registerScreen, page: ()=> RegisterScreen()),
    GetPage(name: AppRoutes.loginScreen, page: ()=> LoginScreen()),

  ];
}