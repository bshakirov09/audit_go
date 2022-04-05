// Created by Muhammed Tolkinov on 28-January-2022

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';

class DropDownComponent extends StatefulWidget {
  final Map<String, String> items;
  final ValueChanged<String> onChanged;
  final String title;
  final String? initValue;

  const DropDownComponent({
    Key? key,
    required this.items,
    required this.onChanged,
    this.title = '',
    this.initValue,
  }) : super(key: key);

  @override
  State<DropDownComponent> createState() => _DropDownComponentState();
}

class _DropDownComponentState extends State<DropDownComponent> {

  String? dropDownValue;

  @override
  void initState() {
    dropDownValue = widget.initValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [

        if (widget.title.isNotEmpty) Text(
          widget.title,
          style: AppTextStyles.regular.copyWith(
            fontSize: 14.sp,
            color: AppColors.textV1,
          ),
        ),

        SizedBox(height: 4.h),
        
        Container(
          width: double.infinity,
          height: 42.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.textFieldBorder),
            color: Colors.white,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              focusColor: Colors.white,
              value: dropDownValue,
              style: AppTextStyles.regular.copyWith(
                fontSize: 14.sp,
                color: AppColors.textV1
              ),
              icon: Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: SvgPicture.asset(AppIcons.dropDown),
              ),
              items: widget.items.keys.map((key) {
                return DropdownMenuItem<String>(
                  value: key,
                  child: Text(
                    widget.items[key] ?? '',
                    style: AppTextStyles.regular.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.textV1
                    )
                  ),
                );
              }).toList(),
              onChanged: (value) => setState(() {
                dropDownValue = value;
                widget.onChanged(value ?? '');
              }),
            ),
          ),
        ),
      ],
    );
  }
}
