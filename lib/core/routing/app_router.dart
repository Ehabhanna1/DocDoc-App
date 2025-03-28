




import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/features/login/ui/login_screen.dart';
import 'package:docdoc_app/features/onBoarding/ui/onBoarding_screen.dart';
import 'package:docdoc_app/features/signUp/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {

   
  Route? generateRoute ( RouteSettings settings){
    
     final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
        case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
        case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
        default:
        return null;
  }
   // return null;
  
}
}