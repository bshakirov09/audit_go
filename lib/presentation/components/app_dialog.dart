// Created by Muhammed Tolkinov on 04-April-2022

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goplaciz/presentation/components/main_button_component.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';

class AppDialog {

  static void dialog({
    required BuildContext context,
    required VoidCallback onConfirmed,
    String confirmedButtonText = '',
    String title = '',
    String message = '',
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 24.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r)
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: SvgPicture.asset(AppIcons.closeSquare),
                  ),
                ),

                SizedBox(height: 4.h),

                Text(
                  title,
                  style: AppTextStyles.medium.copyWith(
                    fontSize: 18.sp,
                    color: AppColors.textV1,
                  ),
                ),

                SizedBox(height: 16.h),

                Text(
                  message,
                  style: AppTextStyles.regular.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.dialogMessage
                  ),
                  textAlign: TextAlign.center,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainButtonComponent(
                      text: 'cancel'.tr(),
                      width: 123.w,
                      height: 32.h,
                      textColor: AppColors.textV1,
                      backgroundColor: AppColors.grayLight,
                      margin: EdgeInsets.only(top: 24.h),
                      onPressed: () => Navigator.pop(context)
                    ),

                    MainButtonComponent(
                      text: confirmedButtonText,
                      width: 123.w,
                      height: 32.h,
                      margin: EdgeInsets.only(top: 24.h),
                      onPressed: onConfirmed
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      }
    );
  }

}
