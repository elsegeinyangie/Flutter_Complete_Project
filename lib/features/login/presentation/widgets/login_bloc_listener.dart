import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/themes/styles.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/themes/colors_manager.dart';
import '../../logic/cubit/login_state.dart';

import '../../../../core/routing/routes.dart';
import '../../logic/cubit/login_cubit.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryBlue,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(error, style: MyTextStyles.font15DarkBlueMedium),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: MyTextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}