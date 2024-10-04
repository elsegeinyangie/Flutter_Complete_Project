import 'package:flutter/material.dart';
import '../../../core/helpers/extensions.dart';
import '../../../core/routing/app_router.dart';
import '../../../core/themes/colors_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/routes.dart';
import '../../../core/themes/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
          backgroundColor:
              const WidgetStatePropertyAll(ColorsManager.primaryBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStatePropertyAll(
            Size(double.infinity, 50.h),
          ),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      child: Text(
        'Get Started',
        style: MyTextStyles.font16WhiteMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
