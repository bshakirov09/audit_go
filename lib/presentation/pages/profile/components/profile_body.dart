// Created by Muhammed Tolkinov on 10-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'profile_body_items.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        line(28.w, const Color.fromRGBO(255, 177, 16, 1)),

        line(10.w, const Color.fromRGBO(255, 206, 57, 1)),

        Container(
          padding: EdgeInsets.only(top: 24.h),
          height: 550.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14.r),
              topRight: Radius.circular(14.r)
            )
          ),
          child: const ProfileBodyItems(),
        )
      ],
    );
  }

  Widget line(double margin, Color color) {
    return Container(
      height: 10.h,
      margin: EdgeInsets.symmetric(horizontal: margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r)
        ),
        color: color
      ),
    );
  }

}

