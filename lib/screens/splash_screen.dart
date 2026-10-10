import 'dart:async';
import 'package:flutter/material.dart';
import 'login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, LoginScreen.routeName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Image.asset(
                'assets/images/andorid12Splash.png',
                width: 90,
                height: 90,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'from',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        letterSpacing: 1.1,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Image.asset(
                      'assets/images/Meta Logo.png',
                      height: 32,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}