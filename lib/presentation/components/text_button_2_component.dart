// Created by Muhammed Tolkinov on 07-March-2022

import 'package:flutter/material.dart';
import 'package:goplaciz/presentation/styles/app_colors.dart';
import 'package:goplaciz/presentation/styles/app_text_styles.dart';

import 'text_button_component.dart';

class TextButton2Component extends StatelessWidget {
  final String firstText;
  final String secondText;
  final double firstTextSize;
  final VoidCallback secondTextPressed;

  const TextButton2Component({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.secondTextPressed,
    required this.firstTextSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Flexible(
          flex: 2,
          child: Text(
            firstText,
            style: AppTextStyles.medium.copyWith(
              fontSize: firstTextSize,
              color: AppColors.textV1
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        if (secondText.isNotEmpty) TextButtonComponent(
          text: secondText,
          onPressed: secondTextPressed,
        )
      ],
    );
  }
}
