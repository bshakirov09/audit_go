// Created by Muhammed Tolkinov on 03-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:goplaciz/presentation/styles/app_text_styles.dart';

class TextButtonComponent extends StatelessWidget {
  final String text;
  final Color? textColor;
  final VoidCallback onPressed;
  final EdgeInsets? margin;

  const TextButtonComponent({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.medium.copyWith(
            fontSize: 14.sp,
            color: textColor
          ),
        )
      ),
    );
  }
}
