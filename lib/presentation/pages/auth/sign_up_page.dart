// Created by Muhammed Tolkinov on 07-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:goplaciz/applications/auth/sign_up/sign_up_bloc.dart';
import 'package:goplaciz/domain/auth/verify_email_types.dart';
import 'package:goplaciz/presentation/components/main_button_component.dart';
import 'package:goplaciz/presentation/components/text_button_2_component.dart';
import 'package:goplaciz/presentation/components/text_field_component.dart';
import 'package:goplaciz/presentation/routes/app_routes.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';
import 'package:goplaciz/presentation/components/app_bar_component.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final SignUpBloc bloc = SignUpBloc();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String firstName = '', lastName = '', email = '';
  String password = '', confirmPassword = '';

  void signUp() {
    if (formKey.currentState!.validate()) {
      bloc.add(SignUpUserEvent(
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
      ));
    }
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        appBar: AppBarComponent(title: 'sign_up'.tr()),
        body: BlocConsumer(
          bloc: bloc,
          listener: (context, state) {
            if (bloc.state.isSignUpSuccess) {
              Navigator.push(context, AppRoutes.verifyEmail(
                email: email,
                verifyEmailType: VerifyEmailTypes.signUp,
              ));
            }
          },
          builder: (context, state) {
            return Form(
              key: formKey,
              child: SafeArea(
                child: ListView(
                  padding: EdgeInsets.fromLTRB(16.w, 52.h, 16.w, 18.h),
                  children: [

                    SvgPicture.asset(AppIcons.signUpPageIcon),

                    SizedBox(height: 56.h),

                    Text(
                      'please_fill_all_required_fields'.tr(),
                      style: AppTextStyles.medium.copyWith(fontSize: 16.sp),
                      textAlign: TextAlign.center,
                    ),

                    TextFieldComponent(
                      title: 'first_name'.tr(),
                      hint: 'Cheyenne',
                      initialValue: firstName,
                      prefixSvgIcon: AppIcons.user,
                      onChanged: (value) => firstName = value,
                    ),

                    SizedBox(height: 16.h),

                    TextFieldComponent(
                      title: 'last_name'.tr(),
                      hint: 'Torff',
                      initialValue: lastName,
                      prefixSvgIcon: AppIcons.user,
                      onChanged: (value) => lastName = value
                    ),

                    SizedBox(height: 16.h),

                    TextFieldComponent(
                      title: 'email'.tr(),
                      hint: 'example@gmail.com',
                      prefixSvgIcon: AppIcons.email,
                      initialValue: email,
                      inputType: TextInputType.emailAddress,
                      errorText: bloc.state.hasError ? bloc.state.error : null,
                      onChanged: (value) => email = value
                    ),

                    SizedBox(height: 16.h),

                    TextFieldComponent(
                      title: 'create_password'.tr(),
                      hint: '********',
                      isObscure: true,
                      initialValue: password,
                      onChanged: (value) => password = value,
                    ),

                    SizedBox(height: 16.h),

                    TextFieldComponent(
                      title: 'confirm_password'.tr(),
                      hint: '********',
                      isObscure: true,
                      initialValue: confirmPassword,
                      onChanged: (value) => confirmPassword = value
                    ),

                    SizedBox(height: 16.h),

                    Text(
                      'sign_up_info'.tr(),
                      style: AppTextStyles.medium.copyWith(fontSize: 14.sp),
                      textAlign: TextAlign.center,
                    ),

                    MainButtonComponent(
                      text: 'sign_up'.tr(),
                      margin: EdgeInsets.only(top: 24.h, bottom: 18.h),
                      isLoading: bloc.state.isLoading,
                      onPressed: signUp
                    ),

                    TextButton2Component(
                      firstText: 'have_an_account'.tr(),
                      secondText: 'login'.tr(),
                      secondTextPressed: () => Navigator.pop(context),
                      firstTextSize: 14.sp
                    )
                  ],
                ),
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
