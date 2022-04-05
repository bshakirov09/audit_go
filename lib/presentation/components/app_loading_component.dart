
// Created by Muhammed Tolkinov on 07-December-2021

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class AppLoadingComponent extends StatelessWidget {
  final bool showLoadingTextForIOS;

  const AppLoadingComponent({
    Key? key,
    this.showLoadingTextForIOS = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
        ),
      );
    }
    else {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const CupertinoActivityIndicator(),

            Visibility(
              visible: showLoadingTextForIOS,
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('Loading'),
              ),
            )
          ],
        ),
      );
    }
  }
}
