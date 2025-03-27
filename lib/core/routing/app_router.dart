




import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/features/onBoarding/ui/onBoarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute ( RouteSettings settings){
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
  }
}
}