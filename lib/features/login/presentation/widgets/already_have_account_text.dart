import 'package:flutter/material.dart';
import '../../../../core/themes/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: MyTextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: 'Sign Up',
            style: MyTextStyles.font13BlueSemiBold,
          ),

        ],
      ),
    );
  }
}
