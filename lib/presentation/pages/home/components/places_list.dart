
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:goplaciz/presentation/styles/app_style_library.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: EdgeInsets.only(left: 16.w, top: 36.h, right: 8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'find_the_right_places'.tr(),
                style: AppTextStyles.bold.copyWith(
                    fontSize: 20.sp,
                    color: AppColors.textV1
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8.h),
                child: SvgPicture.asset(AppIcons.search)
              )

            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 8.w, top: 8.h, right: 8.w),
          child: Wrap(
            runSpacing: 16.h,
            children: [
              for (int i = 0; i < places.length; i++)
                menu(
                  text: places[i]['text'] ?? '',
                  icon: places[i]['icon'] ?? ''
                )
            ],
          ),
        )

      ],
    );
  }

  Widget menu({required String text, required String icon}) {
    return Container(
      width: 68.w,
      height: 68.w,
      margin: EdgeInsets.symmetric(horizontal: 9.w),
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.r),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 4,
            color: Color.fromRGBO(69, 127, 193, 0.5)
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset(
            icon,
            width: 21.w,
            height: 21.h,
          ),

          SizedBox(height: 12.h),

          Text(
            text,
            style: AppTextStyles.bold.copyWith(
              fontSize: 8.sp,
              color: AppColors.textV1,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

}

const List<Map<String, String>> places = [
  {
    'text' : 'Food & Dining',
    'icon' : 'assets/images/restaurant.png',
  },
  {
    'text' : 'Kosher Stays',
    'icon' : 'assets/images/home_filled.png',
  },
  {
    'text' : 'Shuls',
    'icon' : 'assets/images/shuls.png',
  },
  {
    'text' : 'Jewish Resources',
    'icon' : 'assets/images/synagogue.png',
  },
  {
    'text' : 'Things To Do',
    'icon' : 'assets/images/camera.png',
  },
  {
    'text' : 'Hotels',
    'icon' : 'assets/images/hotel.png',
  },
  {
    'text' : 'Flights',
    'icon' : 'assets/images/flight.png',
  },
  {
    'text' : 'Car Rentals',
    'icon' : 'assets/images/car.png',
  },
];