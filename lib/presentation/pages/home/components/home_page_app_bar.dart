
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goplaciz/presentation/routes/app_routes.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.w,
        top: MediaQuery.of(context).padding.top,
        right: 8.w
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Padding(
            padding: EdgeInsets.all(8.w),
            child: SvgPicture.asset(AppIcons.notification),
          ),

          SvgPicture.asset(AppIcons.appLogo_),

          GestureDetector(
            onTap: () => Navigator.push(context, AppRoutes.profile()),
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: SvgPicture.asset(AppIcons.profile),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
