
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';

class TravellingDealsList extends StatelessWidget {
  const TravellingDealsList({Key? key}) : super(key: key);

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
                'travelling_deals'.tr(),
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
          height: 250.h,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16.w, top: 16.h),
            itemBuilder: (context, i) {
              return Container(
                width: 144.w,
                height: 208.h,
                margin: EdgeInsets.only(right: 8.w, bottom: 8.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 4,
                      color: Color.fromRGBO(97, 97, 97, 0.18)
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8.r),
                        topLeft: Radius.circular(8.r),
                        bottomRight: Radius.circular(8.r),
                      ),
                      child: Image.asset(
                        'assets/images/temp2.png',
                        height: 128.h,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 8.w, top: 4.h, right: 8.w),
                      child: Text(
                        '10 DAYS IN EUROPE ITINERARY TO TRA',
                        style: AppTextStyles.medium.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.textV1,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(8.w, 4.h, 8.w, 8.h),
                      child: Text(
                        'London & Paris Stockholm & Oslo',
                        style: AppTextStyles.regular.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.bodyText,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            }
          ),
        )

      ],
    );
  }
}
