// Created by Muhammed Tolkinov on 05-April-2022

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';

class AdvertisementsList extends StatelessWidget {
  const AdvertisementsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: EdgeInsets.only(left: 16.w, top: 24.h, right: 8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(
                'advertisement'.tr(),
                style: AppTextStyles.bold.copyWith(
                  fontSize: 20.sp,
                  color: AppColors.textV1,
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8.h),
                child: SvgPicture.asset(AppIcons.chevronRight),
              )

            ],
          ),
        ),

        SizedBox(
          height: 150.h,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16.w, top: 16.h),
            itemBuilder: (context, i) {
              return Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    'assets/images/temp.png',
                    height: 120.h,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }
          ),
        )

      ],
    );
  }
}
