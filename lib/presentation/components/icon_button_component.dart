// Created by Muhammed Tolkinov on 03-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final String svgIcon;

  const IconButtonComponent({
    Key? key,
    required this.onPressed,
    required this.svgIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: SvgPicture.asset(svgIcon),
    );
  }
}
