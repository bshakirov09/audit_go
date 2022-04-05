// Created by Muhammed Tolkinov on 07-March-2022

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goplaciz/domain/core/social_types.dart';
import 'package:goplaciz/presentation/styles/app_icons.dart';

class AuthSocialsComponent extends StatelessWidget {
  final Function(SocialTypes) onPressed;

  const AuthSocialsComponent({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () => onPressed(SocialTypes.google),
          child: SvgPicture.asset(AppIcons.google)
        ),

        GestureDetector(
          onTap: () => onPressed(SocialTypes.facebook),
          child: SvgPicture.asset(AppIcons.facebook)
        ),

        if (Platform.isIOS) GestureDetector(
          onTap: () => onPressed(SocialTypes.apple),
          child: SvgPicture.asset(AppIcons.apple)
        ),
      ],
    );
  }
}
