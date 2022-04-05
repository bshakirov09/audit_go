// Created by Muhammed Tolkinov on 07-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:goplaciz/applications/auth/sign_in/sign_in_bloc.dart';
import 'package:goplaciz/presentation/components/app_bar_component.dart';
import 'package:goplaciz/presentation/components/app_loading_component.dart';
import 'package:goplaciz/presentation/components/auth_socials_component.dart';
import 'package:goplaciz/presentation/components/divider_with_text_component.dart';
import 'package:goplaciz/presentation/components/main_button_component.dart';
import 'package:goplaciz/presentation/components/text_button_2_component.dart';
import 'package:goplaciz/presentation/components/text_button_component.dart';
import 'package:goplaciz/presentation/components/text_field_component.dart';
import 'package:goplaciz/presentation/routes/app_routes.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  final SignInBloc bloc = SignInBloc();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email = '', password = '';

  void login() {
    if (formKey.currentState!.validate()) {
      bloc.add(LoginEvent(
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
        appBar: AppBarComponent(title: 'login'.tr()),
        body: SafeArea(
          child: BlocConsumer(
            bloc: bloc,
            listener: (context, state) {
              if (bloc.state.isLoginSuccess) {
                Navigator.pushAndRemoveUntil(
                  context,
                  AppRoutes.profile()
                  , (route) => false
                );
              }
              else if (bloc.state.hasError2) {

              }
            },
            builder: (context, state) {
              if (bloc.state.isLoading2) {
                return const AppLoadingComponent();
              }
              else {
                return Form(
                  key: formKey,
                  child: ListView(
                    padding: EdgeInsets.only(top: 35.h, bottom: 23.h),
                    children: [

                      SvgPicture.asset(AppIcons.signInPageIcon),

                      Padding(
                        padding: EdgeInsets.fromLTRB(25.w, 35.h, 25.w, 24.h),
                        child: Text(
                          'sign_in_info'.tr(),
                          style: AppTextStyles.medium.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.textV1
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.w,
                          bottom: 16.h,
                          right: 16.w
                        ),
                        child: TextFieldComponent(
                          title: 'email'.tr(),
                          hint: 'example@gmail.com',
                          initialValue: email,
                          prefixSvgIcon: AppIcons.email,
                          inputType: TextInputType.emailAddress,
                          errorText: bloc.state.hasError ? bloc.state.error : null,
                          onChanged: (value) => email = value,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.w,
                          bottom: 24.h,
                          right: 16.w
                        ),
                        child: TextFieldComponent(
                          title: 'password'.tr(),
                          hint: '********',
                          initialValue: password,
                          isObscure: true,
                          errorText: bloc.state.hasError ? bloc.state.error : null,
                          textInputAction: TextInputAction.send,
                          textInputActionOnTap: login,
                          onChanged: (value) => password = value,
                        ),
                      ),


                      MainButtonComponent(
                        text: 'login'.tr(),
                        margin: EdgeInsets.only(
                          left: 16.w,
                          bottom: 6.h,
                          right: 16.w
                        ),
                        isLoading: bloc.state.isLoading,
                        onPressed: login
                      ),

                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: TextButtonComponent(
                            text: "${'forgot_password'.tr()}?",
                            textColor: AppColors.primary,
                            onPressed: () => Navigator.push(
                              context,
                              AppRoutes.forgotPassword()
                            )
                          ),
                        ),
                      ),

                      DividerWithTextComponent(
                        text: 'or_continue_with'.tr(),
                        color: AppColors.stroke,
                        textSize: 14.sp,
                      ),

                      SizedBox(height: 20.h),

                      AuthSocialsComponent(
                        onPressed: (type) {
                          if (!bloc.state.isLoading) {
                            bloc.add(AuthWithSocial(socialType: type));
                          }
                        },
                      ),

                      SizedBox(height: 16.h),

                      TextButton2Component(
                        firstText: 'do_not_have_an_account'.tr(),
                        secondText: 'sign_up'.tr(),
                        firstTextSize: 14.sp,
                        secondTextPressed: () => Navigator.push(
                          context,
                          AppRoutes.signUp(),
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
