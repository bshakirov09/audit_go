// Created by Muhammed Tolkinov on 16-March-2022

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CountryPickerComponent {

  static void showPicker({
    required ValueChanged<String> onSelected,
    required BuildContext context
  }) {
    showCountryPicker(
      onSelect: (Country value) => onSelected(value.name),
      context: context
    );
  }

}
