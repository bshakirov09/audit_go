// Created by Muhammed Tolkinov on 16-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:goplaciz/presentation/styles/app_text_styles.dart';
import 'package:goplaciz/presentation/styles/app_colors.dart';

class CountryPhoneNumberComponent extends StatelessWidget {
  final PhoneNumber initialCountry;
  final TextEditingController controller;

  const CountryPhoneNumberComponent({
    Key? key,
    required this.initialCountry,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      onInputChanged: (number) {},
      onInputValidated: (value) {},
      validator: (value) => null,
      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: AppTextStyles.regular.copyWith(
        fontSize: 14.sp,
      ),
      initialValue: initialCountry,
      textFieldController: controller,
      formatInput: false,
      keyboardType: const TextInputType.numberWithOptions(
        signed: true,
        decimal: true,
      ),
      inputBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: const BorderSide(color: AppColors.textFieldBorder),
      ),
      onSaved: (number) {},
    );
  }
}
