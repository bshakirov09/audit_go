// Created by Muhammed Tolkinov on 10-March-2022

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:goplaciz/applications/profile/profile_bloc.dart';
import 'package:goplaciz/infrastructure/repository/common/get_or_upload_media_api.dart';
import 'package:goplaciz/presentation/components/app_loading_component.dart';
import 'package:goplaciz/presentation/components/icon_button_component.dart';
import 'package:goplaciz/presentation/routes/app_routes.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';
import 'package:goplaciz/utils/get_it.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.read<ProfileBloc>().state;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            const BackButton(color: Colors.white),

            IconButtonComponent(
              svgIcon: AppIcons.edit,
              onPressed: () => Navigator.push(
                context,
                AppRoutes.editProfile(
                  profile: state.profile,
                  whenComplete: () => context.read<ProfileBloc>().add(
                    const GetProfileEvent()
                  )
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 28.h),

        GestureDetector(
          onTap: () async {
            final String image =
            await getIt.get<GetOrUploadMediaAPI>().getPhotoFromDevice();

            if (image.isNotEmpty) {
              context.read<ProfileBloc>().add(
                UpdateAvatarEvent(avatar: image)
              );
            }
          },
          child: Container(
            width: 64.h,
            height: 64.h,
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
            ),
            child: state.profile.avatar.isEmpty ? Icon(
              Icons.person_rounded,
              color: AppColors.primary,
              size: 35.h,
            ) : state.profile.avatarFromLocal ? ClipRRect(
              borderRadius: BorderRadius.circular(100.r),
              child: Image.file(
                File(state.profile.avatar),
                fit: BoxFit.cover,
              ),
            ) :
            ClipRRect(
              borderRadius: BorderRadius.circular(100.r),
              child: CachedNetworkImage(
                imageUrl: state.profile.avatar,
                fit: BoxFit.cover,
                placeholder: (context, url) => const AppLoadingComponent(
                  showLoadingTextForIOS: false,
                ),
              ),
            ),
          ),
        ),

        Text(
          '${state.profile.firstName} ${state.profile.lastName}',
          style: AppTextStyles.regular.copyWith(
            fontSize: 24.sp,
            color: Colors.white
          ),
        ),

        IconButtonComponent(
          svgIcon: AppIcons.chevron,
          onPressed: () {},
        ),
      ],
    );
  }
}
