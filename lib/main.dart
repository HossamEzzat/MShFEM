import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'onboarding/onboarding_screen.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: AnimatedSplashScreen(
          duration: 4000,
          splash: Image.asset("assets/mainsplash.png",fit: BoxFit.cover,width: double.infinity),
          nextScreen: const OnboardingScreen(),
          splashIconSize: double.infinity,
          splashTransition: SplashTransition.fadeTransition,
        ),
      ),

    );
  }
}

