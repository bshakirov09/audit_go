// Created by Muhammed Tolkinov on 29-December-2021

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:goplaciz/presentation/styles/app_style_library.dart';

class TextFieldComponent extends StatefulWidget {
  final String? initialValue;
  final String title;
  final String hint;
  final String? helpText;
  final String? errorText;
  final bool isObscure;
  final String suffixSvgIcon;
  final TextInputType? inputType;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String> onChanged;
  final TextInputAction? textInputAction;
  final VoidCallback? textInputActionOnTap;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int maxLine;
  final bool capitalizeText;
  final bool readOnly;
  final bool autoFocus;
  final String prefixSvgIcon;

  const TextFieldComponent({
    Key? key,
    required this.onChanged,
    this.hint = '',
    this.title = '',
    this.initialValue,
    this.helpText,
    this.errorText,
    this.textInputAction,
    this.textInputActionOnTap,
    this.validator,
    this.isObscure = false,
    this.suffixSvgIcon = '',
    this.prefixSvgIcon = '',
    this.inputType,
    this.onTap,
    this.inputFormatters,
    this.controller,
    this.maxLength,
    this.capitalizeText = false,
    this.readOnly = false,
    this.autoFocus = false,
    this.maxLine = 1,
  }) : super(key: key);

  @override
  State<TextFieldComponent> createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {

  bool _isShowing = false;

  OutlineInputBorder _border() {
    return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: const BorderSide(color: AppColors.textFieldBorder),
    );
  }

  @override
  void initState() {
    _isShowing = widget.isObscure;
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
            color: AppColors.textV1
          ),
        ),

        SizedBox(height: 8.h),

        TextFormField(
          initialValue: widget.initialValue,
          keyboardType: widget.inputType,
          obscureText: _isShowing,
          validator: widget.validator,
          textInputAction: widget.textInputAction,
          controller: widget.controller,
          inputFormatters: widget.inputFormatters,
          maxLength: widget.maxLength,
          readOnly: widget.readOnly,
          autofocus: widget.autoFocus,
          maxLines: widget.maxLine,
          onTap: widget.onTap,
          textCapitalization: widget.capitalizeText
            ? TextCapitalization.characters
            : TextCapitalization.none,
          style: AppTextStyles.regular.copyWith(
            fontSize: 14.sp,
            color: AppColors.bodyText,
          ),
          textAlignVertical: TextAlignVertical.center,
          cursorColor: AppColors.primary,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            errorMaxLines: 3,
            counterStyle: AppTextStyles.regular.copyWith(
              fontSize: 14.sp,
              color: AppColors.primary
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: AppColors.primary),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: Colors.red),
            ),
            enabledBorder: _border(),
            border: _border(),
            helperText: widget.helpText,
            helperStyle: AppTextStyles.regular.copyWith(
              fontSize: 10.sp,
              color: AppColors.bodyText,
            ),
            hintText: widget.hint,
            hintStyle: AppTextStyles.regular.copyWith(
              fontSize: 14.sp,
              color: AppColors.subtext,
            ),
            errorText: widget.errorText,
            errorStyle: AppTextStyles.regular.copyWith(
              fontSize: 12.sp,
              color: Colors.red,
            ),
            prefixIcon: widget.prefixSvgIcon.isNotEmpty ? Padding(
              padding: EdgeInsets.all(12.h),
              child: SvgPicture.asset(
                widget.prefixSvgIcon,
              ),
            ) : null,
            suffixIcon: widget.suffixSvgIcon.isNotEmpty ? Padding(
              padding: EdgeInsets.all(12.h),
              child: SvgPicture.asset(
                widget.suffixSvgIcon,
              ),
            )  :
            Visibility(
              visible: widget.isObscure,
              child: GestureDetector(
                onTap: () => setState(() => _isShowing = !_isShowing),
                child: Icon(
                  !_isShowing ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                  color: AppColors.textFieldSuffix,
                ),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h)
          ),
          onChanged: (value) => widget.onChanged(value),
          onFieldSubmitted: (term) {
            if (widget.textInputActionOnTap != null) {
              widget.textInputActionOnTap!();
            }
          },
        ),
      ],
    );
  }
}
