import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/themes/colors_manager.dart';
import 'package:flutter_complete_project/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFieldForm extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final Color? suffixIconColor;
  const AppTextFieldForm(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.fillColor,
      this.suffixIconColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.primaryBlue,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lightGrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        hintStyle: hintStyle ?? MyTextStyles.font14LightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor ?? ColorsManager.primaryBlue,
        fillColor: fillColor ?? ColorsManager.veryLightGrey,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: MyTextStyles.font14DarkBlueMedium,
    );
  }
}