
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:goplaciz/applications/home/home_bloc.dart';
import 'package:goplaciz/presentation/components/app_loading_component.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';

class ExploresList extends StatelessWidget {
  const ExploresList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final explores = context.read<HomeBloc>().state.explores;

    return Visibility(
      visible: explores.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 24.h, right: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  'explore'.tr(),
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
            height: 120.h,
            child: ListView.builder(
              itemCount: explores.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16.w, top: 16.h),
              itemBuilder: (context, i) {
                return Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: Stack(
                    children: [

                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: CachedNetworkImage(
                          imageUrl: explores[i].image,
                          height: 100.h,
                          fit: BoxFit.cover,
                          placeholder: (context, url) {
                            return const Center(
                              child: AppLoadingComponent(
                                showLoadingTextForIOS: false
                              ),
                            );
                          },
                          errorWidget: (context, _, __) {
                            return Image.asset('assets/images/default_image.jpg');
                          },
                        ),
                      ),

                      Positioned(
                        left: 11.w,
                        bottom: 12.h,
                        child: Text(
                          explores[i].city,
                          style: AppTextStyles.bold.copyWith(
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                      )

                    ],
                  ),
                );
              }
            ),
          )

        ],
      ),
    );
  }
}
