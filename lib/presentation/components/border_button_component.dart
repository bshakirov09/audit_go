// Created by Muhammed Tolkinov on 07-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:goplaciz/presentation/styles/app_colors.dart';
import 'package:goplaciz/presentation/styles/app_text_styles.dart';

class BorderButtonComponent extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color borderColor;
  final double? width;
  final EdgeInsets? margin;

  const BorderButtonComponent({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.borderColor,
    this.textColor,
    this.width,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          width: width ?? double.infinity,
          height: 56.h,
          margin: margin,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: borderColor)
          ),
          child: Center(
            child: Text(
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
