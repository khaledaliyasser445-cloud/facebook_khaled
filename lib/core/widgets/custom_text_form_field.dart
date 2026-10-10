import 'package:facebook/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String hintText;
  final bool isPassword;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    required this.keyboardType,
    required this.textInputAction,
    required this.hintText,
    this.isPassword = false,
    this.validator,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _isObscure = widget.isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: true,
      autovalidateMode: AutovalidateMode.onUserInteractionIfError,
      cursorColor: AppColors.blue,
      cursorRadius: Radius.circular(16),
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      obscureText: _isObscure,
      validator: widget.validator,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      style: const TextStyle(
        fontSize: 14,
        fontWeight: .w500,
        color: AppColors.black,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.fillColor,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: .w500,
          color: AppColors.grey,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.grey,
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.grey, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.grey, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.red, width: 1),
        ),
      ),
    );
  }
}