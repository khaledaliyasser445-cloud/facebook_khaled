import 'package:facebook/screens/home/home_screen.dart';
import 'package:facebook/screens/login/login_screen.dart';
import 'package:facebook/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookUI());
}

class FacebookUI extends StatelessWidget {
  const FacebookUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook UI',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        LoginScreen.routeName: (_) => const LoginScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
      },
    );
  }
}