import 'package:flutter/material.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/shared_widgets/app_text_button.dart';
import '../../../core/shared_widgets/app_text_field_form.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/styles.dart';
import 'widgets/already_have_account_text.dart';
import 'widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: MyTextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: MyTextStyles.font14GreyRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    const AppTextFieldForm(hintText: 'Email'),
                    verticalSpace(18),
                    AppTextFieldForm(
                      hintText: 'Password',
                      isObscureText: isObscureText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(
                          isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Forgot Password?',
                        style: MyTextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(24),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: MyTextStyles.font16WhiteSemiBold,
                      onPressed: () {},
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const AlreadyHaveAccountText(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
