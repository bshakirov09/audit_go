// Created by Muhammed Tolkinov on 07-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:goplaciz/presentation/styles/app_colors.dart';
import 'package:goplaciz/presentation/styles/app_text_styles.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarComponent({
    Key? key,
    this.title = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        top: MediaQuery.of(context).padding.top,
        right: 16.w
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          const BackButton(),

          Text(
            title,
            style: AppTextStyles.bold.copyWith(
              fontSize: 20.sp,
              color: AppColors.textV1
            ),
          ),

          SizedBox(width: 48.w),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
