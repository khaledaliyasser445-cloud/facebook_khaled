import 'package:facebook/core/utils/app_assets.dart';
import 'package:facebook/core/utils/app_colors.dart';
import 'package:facebook/core/utils/app_validator.dart';
import 'package:facebook/core/widgets/custom_text_form_field.dart';
import 'package:facebook/screens/home/home_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(AppImages.logo, width: 120),
                const Spacer(flex: 1),
                CustomTextFormField(
                  hintText: "Mobile Number or Email Address",
                  keyboardType: .emailAddress,
                  textInputAction: .next,
                  validator: AppValidator.emailValidator,
                ),
                const SizedBox(height: 12),
                CustomTextFormField(
                  hintText: 'Password',
                  keyboardType: .visiblePassword,
                  textInputAction: .done,
                  isPassword: true,
                  validator: AppValidator.passwordValidator,
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacementNamed(
                        context,
                        HomeScreen.routeName,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blue,
                    foregroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16),
                    ),
                    minimumSize: const Size.fromHeight(56),
                  ),
                  child: const Text('Login', style: TextStyle(fontSize: 20)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgotten Password ?",
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
                const Spacer(flex: 9),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.blue,
                    side: const BorderSide(color: AppColors.blue, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16),
                    ),
                    minimumSize: const Size.fromHeight(56),
                  ),
                  child: const Text(
                    "Create Account",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(height: 8),
                Image.asset(AppImages.meta, width: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}