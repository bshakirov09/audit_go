// Created by Muhammed Tolkinov on 08-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goplaciz/applications/auth/forgot_password/forgot_password_cubit.dart';

import 'package:goplaciz/domain/auth/verify_email_types.dart';
import 'package:goplaciz/presentation/components/app_bar_component.dart';
import 'package:goplaciz/presentation/routes/app_routes.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';
import 'package:goplaciz/presentation/components/text_field_component.dart';
import 'package:goplaciz/presentation/components/main_button_component.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ForgotPasswordCubit cubit = ForgotPasswordCubit();

  String email = '';

  void checkEmail() {
    if (formKey.currentState!.validate()) {
      cubit.checkEmail(email: email);
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
        appBar: AppBarComponent(title: 'forgot_password'.tr()),
        body: Form(
          key: formKey,
          child: ListView(
            padding: EdgeInsets.only(top: 60.h, left: 16.w, right: 16.w),
            children: [

              SvgPicture.asset(AppIcons.forgotPasswordPageIcon),

              Padding(
                padding: EdgeInsets.fromLTRB(10.w, 56.h, 10.w, 24.h),
                child: Text(
                  'forgot_password_info'.tr(),
                  style: AppTextStyles.medium.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.textV1
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              BlocConsumer(
                bloc: cubit,
                listener: (context, state) {
                  if (cubit.state.isExistEmail) {
                    Navigator.push(
                      context,
                      AppRoutes.verifyEmail(
                        email: email,
                        verifyEmailType: VerifyEmailTypes.forgotPassword
                      )
                    );
                  }
                },
                builder: (context, state) {
                  return TextFieldComponent(
                    title: 'email'.tr(),
                    initialValue: email,
                    inputType: TextInputType.emailAddress,
                    hint: 'example@gmail.com',
                    helpText: '6_digit_code_is_sent_to_email'.tr(),
                    prefixSvgIcon: AppIcons.email,
                    textInputAction: TextInputAction.send,
                    textInputActionOnTap: checkEmail,
                    errorText: cubit.state.hasError ? cubit.state.error : null,
                    onChanged: (value) => email = value,
                  );
                }
              ),
            ],
          ),
        ),
        bottomNavigationBar: BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            return MainButtonComponent(
              text: 'accept'.tr(),
              margin: EdgeInsets.only(left: 16.w, bottom: 24.h, right: 16.w),
              isLoading: cubit.state.isLoading,
              onPressed: checkEmail,
            );
          },
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
