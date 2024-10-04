// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/themes/colors_manager.dart';
import 'package:flutter_complete_project/core/themes/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumbers;
  final bool hasMinLength;

  const PasswordValidations({
    Key? key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumbers,
    required this.hasMinLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At lease 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At lease 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow('At lease 1 special character', hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow('At lease 1 number', hasNumbers),
        verticalSpace(2),
        buildValidationRow('At lease 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidation) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: MyTextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidation ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidation ? ColorsManager.grey : ColorsManager.darkBlue
          ),
        ),
      ],
    );
  }
}
