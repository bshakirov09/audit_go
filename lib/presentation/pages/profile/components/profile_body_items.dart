// Created by Muhammed Tolkinov on 10-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goplaciz/applications/profile/profile_bloc.dart';

import 'package:goplaciz/infrastructure/service/shared_pref_service.dart';
import 'package:goplaciz/presentation/components/app_dialog.dart';
import 'package:goplaciz/presentation/routes/app_routes.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';

class ProfileBodyItems extends StatelessWidget {
  const ProfileBodyItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        item(
          icon: AppIcons.settings,
          name: 'settings'.tr()
        ),

        item(
          icon: AppIcons.security,
          name: 'security'.tr()
        ),

        item(
          icon: AppIcons.help,
          name: 'help'.tr()
        ),

        item(
          icon: AppIcons.favorites,
          name: 'favorites'.tr()
        ),

        item(
          icon: AppIcons.yourVoiceMatters,
          name: 'your_voice_matters'.tr()
        ),

        item(
          icon: AppIcons.terms,
          name: 'terms'.tr(),
        ),

        GestureDetector(
          onTap: () => AppDialog.dialog(
            context: context,
            title: 'delete_account'.tr(),
            message: 'delete_account_info'.tr(),
            confirmedButtonText: 'delete'.tr(),
            onConfirmed: () {
              Navigator.pop(context);
              context.read<ProfileBloc>().add(const DeleteAccountEvent());
            }
          ),
          child: item(
            icon: AppIcons.deleteProfile,
            name: 'delete_account'.tr()
          ),
        ),

        GestureDetector(
          onTap: () => AppDialog.dialog(
            context: context,
            title: 'log_out'.tr(),
            message: 'are_you_sure_want_to_logout'.tr(),
            confirmedButtonText: 'log_out'.tr(),
            onConfirmed: () {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                context,
                AppRoutes.authIntro()
                , (route) => false
              );

              SharedPrefService.initialize().then((pref) => pref.logout());
            }
          ),
          behavior: HitTestBehavior.opaque,
          child: item(
            icon: AppIcons.logOut,
            name: 'logout'.tr()
          ),
        ),

        item(
          icon: AppIcons.becomePartner,
          name: 'become_a_partner'.tr()
        ),
      ],
    );
  }

  Widget item({required String icon, required String name}) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, bottom: 24.h, right: 24.w),
      child: Row(
        children: [

          SvgPicture.asset(icon),

          SizedBox(width: 16.w),

          Text(
            name,
            style: AppTextStyles.regular.copyWith(
              fontSize: 16.sp,
              color: AppColors.textV1,
            ),
          )
        ],
      ),
    );
  }

}
