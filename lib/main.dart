import 'package:doctor_hunt_app/core/model/model_onboarding.dart';
import 'package:doctor_hunt_app/core/routes/routes_manager.dart';
import 'package:doctor_hunt_app/screens/main_layout/auth/login_screen.dart';
import 'package:doctor_hunt_app/screens/main_layout/auth/signup_screen.dart';
import 'package:doctor_hunt_app/screens/main_layout/favorite/doctor_details.dart';
import 'package:doctor_hunt_app/screens/main_layout/home/Find_Doctor/find_doctors_screen.dart';
import 'package:doctor_hunt_app/screens/main_layout/home/popular_doctor/popular_doctor.dart';
import 'package:doctor_hunt_app/screens/main_layout/main_layout.dart';
import 'package:doctor_hunt_app/screens/onboarding_screen.dart';
import 'package:doctor_hunt_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DoctorHunt());
}

class DoctorHunt extends StatelessWidget {
  const DoctorHunt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.splash: (context) => SplashScreen(),
        RoutesManager.onboarding: (context) => OnboardingScreen(),
        RoutesManager.login: (context) => LoginScreen(),
        RoutesManager.signup: (context) => SignupScreen(),
        RoutesManager.home: (context) => MainLayout(),
        RoutesManager.findDoctors: (context) => FindDoctorsScreen(),
        RoutesManager.popularDoctor: (context) => PopularDoctor(),
      },
      initialRoute: RoutesManager.splash,
    );
  }
}
