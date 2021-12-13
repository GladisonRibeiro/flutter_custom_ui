import 'package:flutter/material.dart';

import '../app_theme.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final bool password;
  final void Function()? trailingTapped;

  const CustomInput({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.password = false,
  }) : super(key: key);

  InputDecoration get _decoration {
    return InputDecoration(
      hintText: placeholder,
      contentPadding: EdgeInsets.symmetric(
        vertical: AppTheme().inputs.paddingVerticalInput!,
        horizontal: AppTheme().inputs.paddingHorizontalInput!,
      ),
      filled: true,
      fillColor: AppTheme().colors.fillColorInput,
      prefixIcon: leading,
      suffixIcon: trailing != null
          ? GestureDetector(
              onTap: trailingTapped,
              child: trailing,
            )
          : null,
      border: AppTheme().inputs.shapeInput?.copyWith(
            borderSide: BorderSide(color: AppTheme().colors.surfaceColor!),
          ),
      errorBorder: AppTheme().inputs.shapeInput?.copyWith(
            borderSide: BorderSide(color: AppTheme().colors.errorColor!),
          ),
      focusedBorder: AppTheme().inputs.shapeInput?.copyWith(
            borderSide:
                BorderSide(color: AppTheme().colors.primaryVariantColor!),
          ),
      enabledBorder: AppTheme().inputs.shapeInput?.copyWith(
            borderSide:
                BorderSide(color: AppTheme().colors.primaryVariantColor!),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(height: 1, color: AppTheme().colors.bodyColor!),
      obscureText: password,
      decoration: _decoration,
    );
  }
}
