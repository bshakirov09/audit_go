// Created by Muhammed Tolkinov on 02-February-2022

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_text_styles.dart';


class PinPutComponent extends StatelessWidget {

  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final String? errorText;

  const PinPutComponent({
    Key? key,
    required this.controller,
    this.validator,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pinput(
      autofocus: true,
      length: 6,
      keyboardType: TextInputType.number,
      focusNode: FocusNode(),
      controller: controller,
      pinAnimationType: PinAnimationType.scale,
      validator: validator,
      errorText: errorText,
      forceErrorState: true,
      errorTextStyle: AppTextStyles.regular.copyWith(
        fontSize: 14.sp,
        color: Colors.red
      ),
      onChanged: (value) {},
    );
  }
}
