// Created by Muhammed Tolkinov on 10-March-2022

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:goplaciz/infrastructure/repository/user_repository.dart';
import 'package:goplaciz/infrastructure/service/shared_pref_service.dart';
import 'package:goplaciz/presentation/components/app_loading_component.dart';
import 'package:goplaciz/presentation/pages/auth/auth_intro_page.dart';

import 'home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPrefService>(
      future: Future.value(SharedPrefService.initialize()),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data?.getAuthStatus ?? false) {
            UserRepository.token = snapshot.data?.getToken ?? '';
            Intl.defaultLocale = 'en';

            return const HomePage();
          }
          else {
            return const AuthIntroPage();
          }
        }
        else {
          return const Material(
            color: Colors.white,
            child: AppLoadingComponent(),
          );
        }
      }
    );
  }
}
