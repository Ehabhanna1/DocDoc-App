import 'package:docdoc_app/features/onBoarding/ui/onBoarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DocDoc App',
      theme: ThemeData(
      
      ),
      home: const OnboardingScreen(),
    );
  }
}

