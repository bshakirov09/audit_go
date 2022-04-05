// Created by Muhammed Tolkinov on 06-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:goplaciz/presentation/components/border_button_component.dart';
import 'package:goplaciz/presentation/components/divider_with_text_component.dart';
import 'package:goplaciz/presentation/components/main_button_component.dart';
import 'package:goplaciz/presentation/routes/app_routes.dart';

import 'package:goplaciz/presentation/styles/app_style_library.dart';

class AuthIntroPage extends StatelessWidget {
  const AuthIntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Spacer(),

            Padding(
              padding: EdgeInsets.only(left: 33.w),
              child: Text(
                'welcome_to'.tr(),
                style: AppTextStyles.medium.copyWith(
                  fontSize: 24.sp,
                  color: Colors.white,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 33.w, top: 30.h),
              child: SvgPicture.asset(AppIcons.appLogo),
            ),

            const Spacer(),

            MainButtonComponent(
              text: "${'sign_up'.tr()}/${'login'.tr()}",
              textColor: AppColors.primary,
              backgroundColor: Colors.white,
              margin: EdgeInsets.only(left: 16.w, bottom: 42.h, right: 16.w),
              onPressed: () => Navigator.push(context, AppRoutes.signIn()),
            ),

            DividerWithTextComponent(
              text: 'or'.tr(),
              color: Colors.white,
            ),

            BorderButtonComponent(
              text: 'continue_as_a_guest'.tr(),
              borderColor: Colors.white,
              textColor: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 42.h),
              onPressed: () {},
            ),

          ],
        ),
      ),
      backgroundColor: AppColors.primary,
    );
  }
}
