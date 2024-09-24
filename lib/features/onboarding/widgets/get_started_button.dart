import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/themes/colors_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor:
            const WidgetStatePropertyAll(ColorsManager.primaryBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStatePropertyAll(
          Size(double.infinity, 50.h),
        ),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteSemiBold,
        textAlign: TextAlign.center,
      ),
    );
  }
}
