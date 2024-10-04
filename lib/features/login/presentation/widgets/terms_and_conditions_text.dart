import 'package:flutter/material.dart';
import '../../../../core/themes/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging in, you agree to our',
            style: MyTextStyles.font13GreyRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: MyTextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: MyTextStyles.font13GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: MyTextStyles.font13DarkBlueMedium,
          ),

        ],
      ),
    );
  }
}
