// Created by Muhammed Tolkinov on 10-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:goplaciz/applications/profile/profile_bloc.dart';
import 'package:goplaciz/infrastructure/service/shared_pref_service.dart';
import 'package:goplaciz/presentation/components/app_loading_component.dart';
import 'package:goplaciz/presentation/components/snack_bar_component.dart';
import 'package:goplaciz/presentation/routes/app_routes.dart';
import 'package:goplaciz/presentation/styles/app_colors.dart';

import 'components/profile_body.dart';
import 'components/profile_header.dart';

class ProfilePage extends StatefulWidget {

  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  void initState() {
    context.read<ProfileBloc>().add(const GetProfileEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state.profileDeleted) {
            Navigator.pushAndRemoveUntil(
              context,
              AppRoutes.authIntro()
              , (route) => false
            );

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBarComponent.successSnackBar(
                message: 'profile_deleted'.tr()
              )
            );

            SharedPrefService.initialize().then((pref) => pref.logout());
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const ColoredBox(
              color: Colors.white,
              child: AppLoadingComponent()
            );
          }
          else {
            return ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: const [

                ProfileHeader(),

                ProfileBody(),
              ],
            );
          }
        },
      ),
      backgroundColor: AppColors.primary,
    );
  }
}
