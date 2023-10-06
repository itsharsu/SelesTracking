import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';

class ReusableTextField extends StatelessWidget {
  final String? labelText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String? hintText;
  final String? errorText;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FocusNode? focusNode;
  final Color? suffixIconColor;

  ReusableTextField(
      {this.labelText,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.controller,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.done,
      this.hintText,
      this.errorText,
      this.enabled = true,
      this.onChanged,
      this.onSubmitted,
      this.focusNode,
      this.suffixIconColor});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      focusNode: focusNode,
      enabled: enabled,
      style: Theme.of(context).textTheme.bodyMedium,
      cursorColor: AppColor.app_primary,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall,
        errorText: errorText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor,
        labelStyle: Theme.of(context).textTheme.bodySmall,
        border: const UnderlineInputBorder(
          // borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: AppColor.app_textFieldBorder),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.app_textFieldBorder),
        ),
      ),
    );
  }
}
