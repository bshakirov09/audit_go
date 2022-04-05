// Created by Muhammed Tolkinov on 06-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:goplaciz/presentation/styles/app_colors.dart';
import 'package:goplaciz/presentation/styles/app_text_styles.dart';

class MainButtonComponent extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  final bool isLoading;

  const MainButtonComponent({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.backgroundColor,
    this.width,
    this.height,
    this.margin,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? () {} :  onPressed,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 56.h,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: backgroundColor ?? AppColors.secondary,
        ),
        child: Center(
          child: isLoading ? const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
          ) :
          Text(
            text,
            style: AppTextStyles.semiBold.copyWith(
              fontSize: 16.sp,
              color: textColor ?? AppColors.textV1
            ),
          ),
        ),
      )
    );
  }
}

