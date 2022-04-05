// Created by Muhammed Tolkinov on 07-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:goplaciz/presentation/styles/app_text_styles.dart';

class DividerWithTextComponent extends StatelessWidget {
  final String text;
  final Color color;
  final double? textSize;

  const DividerWithTextComponent({
    Key? key,
    required this.text,
    required this.color,
    this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          child: Divider(
            color: color,
            indent: 16.w,
            endIndent: 4.w,
          )
        ),

        Text(
          text,
          style: AppTextStyles.medium.copyWith(
            fontSize: textSize ?? 16.sp,
            color: color
          ),
        ),

        Expanded(
          child: Divider(
            color: color,
            indent: 4.w,
            endIndent: 16.w,
          )
        ),
      ],
    );
  }
}
