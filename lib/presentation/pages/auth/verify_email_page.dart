// Created by Muhammed Tolkinov on 08-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:goplaciz/applications/auth/verify_email/verify_email_cubit.dart';
import 'package:goplaciz/presentation/components/main_button_component.dart';
import 'package:goplaciz/presentation/components/pinput_component.dart';
import 'package:goplaciz/presentation/components/text_button_2_component.dart';
import 'package:goplaciz/presentation/routes/app_routes.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';
import 'package:goplaciz/domain/auth/verify_email_types.dart';
import 'package:goplaciz/presentation/components/app_bar_component.dart';
import 'package:goplaciz/utils/second_to_time_second.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class VerifyEmailPage extends StatefulWidget {
  final String email;
  final VerifyEmailTypes verifyEmailType;

  const VerifyEmailPage({
    Key? key,
    required this.email,
    required this.verifyEmailType,
  }) : super(key: key);

  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {

  final TextEditingController controller = TextEditingController();
  final VerifyEmailCubit cubit = VerifyEmailCubit();
  final CountdownController countdownController = CountdownController(
    autoStart: true
  );
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool showSendAgain = false;
  int verificationSecond = 120;

  @override
  void dispose() {
    cubit.close();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        title: widget.verifyEmailType == VerifyEmailTypes.signUp ?
        'sign_up'.tr() : 'forgot_password'.tr()
      ),
      body: BlocConsumer(
        bloc: cubit,
        listener: (context, state) {
          if (cubit.state.isVerifiedEmail) {
            if (widget.verifyEmailType == VerifyEmailTypes.signUp) {
              Navigator.pushAndRemoveUntil(
                context,
                AppRoutes.profile()
                , (route) => false
              );
            }
            else {
              Navigator.push(
                context,
                AppRoutes.resetPassword(
                  email: widget.email,
                  code: controller.text,
                ),
              );
            }
          }
          else if (cubit.state.isResendVerificationCode) {
            showSendAgain = false;
            verificationSecond = 119;
            controller.text = '';
          }
        },
        builder: (context, state) {
          return ListView(
            padding: EdgeInsets.only(top: 35.h, left: 24.w, right: 24.w),
            children: [

              SvgPicture.asset(AppIcons.verifyEmailPageIcon),

              Padding(
                padding: EdgeInsets.fromLTRB(10.w, 56.h, 10.w, 36.h),
                child: Text(
                  'verification_email_code_info'.tr(),
                  style: AppTextStyles.medium.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.textV1
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Align(
                alignment: Alignment.center,
                child: Countdown(
                  controller: countdownController,
                  seconds: verificationSecond,
                  build: (_, time) {
                    verificationSecond = time.toInt();

                    return Text(
                      secondToTime(time.toInt()),
                      style: AppTextStyles.medium.copyWith(
                        fontSize: 48.sp,
                        color: AppColors.dark
                      ),
                    );
                  },
                  onFinished: () => setState(() => showSendAgain = true),
                ),
              ),

              SizedBox(height: 24.h),

              Form(
                key: formKey,
                child: PinPutComponent(
                  controller: controller,
                  errorText: cubit.state.hasError ? cubit.state.error : null,
                  validator: (value) => null,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 16.w, top: 24.h, right: 16.w),
                child: Text(
                  'please_enter_verification_code'.tr(),
                  style: AppTextStyles.regular.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.subtext,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: TextButton2Component(
                  firstText: widget.email,
                  secondText: showSendAgain ? 'send_again'.tr() : '',
                  secondTextPressed: () => cubit.sendAgain(
                    email: widget.email,
                    verifyEmailType: widget.verifyEmailType,
                  ),
                  firstTextSize: 16.sp
                ),
              )

            ],
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
            onPressed: () {
              if (formKey.currentState!.validate() && !showSendAgain) {
                cubit.checkEmail(
                  email: widget.email,
                  code: controller.text,
                  verifyEmailType: widget.verifyEmailType,
                );
              }
            },
          );
        },
      ),
      backgroundColor: Colors.white,
    );
  }
}
