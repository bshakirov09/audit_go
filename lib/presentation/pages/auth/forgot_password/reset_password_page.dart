// Created by Muhammed Tolkinov on 08-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goplaciz/applications/auth/forgot_password/forgot_password_cubit.dart';
import 'package:goplaciz/presentation/components/app_bar_component.dart';
import 'package:goplaciz/presentation/components/snack_bar_component.dart';
import 'package:goplaciz/presentation/components/text_field_component.dart';
import 'package:goplaciz/presentation/routes/app_routes.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';
import 'package:goplaciz/presentation/components/main_button_component.dart';

class ResetPasswordPage extends StatefulWidget {
  final String email;
  final String code;

  const ResetPasswordPage({
    Key? key,
    required this.email,
    required this.code,
  }) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ForgotPasswordCubit cubit = ForgotPasswordCubit();

  String password = '', confirmPassword = '';

  void resetPassword() {
    if (formKey.currentState!.validate()) {
      cubit.resetPassword(
        email: widget.email,
        code: widget.code,
        password: password
      );
    }
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        appBar: AppBarComponent(title: 'reset_password'.tr()),
        body: BlocConsumer(
          bloc: cubit,
          listener: (context, state) {
            if (cubit.state.isResetPassword) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBarComponent.successSnackBar(
                  message: 'your_password_changed_successfully'.tr(),
                )
              );
              Navigator.push(context, AppRoutes.signIn());
            }
          },
          builder: (context, state) {
            return Form(
              key: formKey,
              child: ListView(
                padding: EdgeInsets.only(top: 60.h, left: 16.w, right: 16.w),
                children: [

                  SvgPicture.asset(AppIcons.forgotPasswordPageIcon),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10.w, 56.h, 10.w, 24.h),
                    child: Text(
                      'reset_password_info'.tr(),
                      style: AppTextStyles.medium.copyWith(
                        fontSize: 16.sp,
                        color: AppColors.textV1
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  TextFieldComponent(
                    title: 'new_password'.tr(),
                    initialValue: password,
                    hint: '********',
                    isObscure: true,
                    errorText: cubit.state.hasError ? cubit.state.error : null,
                    onChanged: (value) => password = value,
                  ),

                  SizedBox(height: 16.h),

                  TextFieldComponent(
                    title: 'reenter_new_password'.tr(),
                    initialValue: confirmPassword,
                    hint: '********',
                    isObscure: true,
                    textInputAction: TextInputAction.send,
                    textInputActionOnTap: resetPassword,
                    errorText: cubit.state.hasError ? cubit.state.error : null,
                    onChanged: (value) => confirmPassword = value,
                  ),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            return MainButtonComponent(
              text: 'confirm'.tr(),
              margin: EdgeInsets.only(left: 16.w, bottom: 24.h, right: 16.w),
              isLoading: cubit.state.isLoading,
              onPressed: resetPassword,
            );
          },
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
