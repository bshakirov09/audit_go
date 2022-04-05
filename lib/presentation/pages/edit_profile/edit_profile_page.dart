// Created by Muhammed Tolkinov on 15-March-2022


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'package:goplaciz/presentation/components/country_phone_number_component.dart';
import 'package:goplaciz/presentation/components/country_picker_component.dart';
import 'package:goplaciz/applications/edit_profile/edit_profile_cubit.dart';
import 'package:goplaciz/presentation/components/date_picker_component.dart';
import 'package:goplaciz/presentation/components/drop_down_component.dart';
import 'package:goplaciz/presentation/components/snack_bar_component.dart';
import 'package:goplaciz/infrastructure/model/profile_model.dart';
import 'package:goplaciz/presentation/components/main_button_component.dart';
import 'package:goplaciz/presentation/components/text_field_component.dart';
import 'package:goplaciz/presentation/styles/app_style_library.dart';
import 'package:goplaciz/presentation/components/app_bar_component.dart';

class EditProfilePage extends StatefulWidget {
  final ProfileModel profile;
  final VoidCallback whenComplete;

  const EditProfilePage({
    Key? key,
    required this.profile,
    required this.whenComplete,
  }) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {

  late TextEditingController locationController;
  late TextEditingController birthDayController;
  late TextEditingController phoneController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  PhoneNumber number = PhoneNumber(isoCode: 'UZ');

  String fullName = '', email = '', gender = '';

  @override
  void initState() {
    fullName = "${widget.profile.firstName} ${widget.profile.lastName}";
    email = widget.profile.email;
    gender = widget.profile.gender;

    locationController = TextEditingController(text: widget.profile.city);
    birthDayController = TextEditingController(text: widget.profile.birthday);
    phoneController = TextEditingController(text: widget.profile.phone);
    super.initState();
  }

  @override
  void dispose() {
    phoneController.dispose();
    locationController.dispose();
    birthDayController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        appBar: AppBarComponent(title: 'edit_profile'.tr()),
        body: BlocConsumer<EditProfileCubit, EditProfileState>(
          listener: (context, state) {
            if (state is ProfileEdited) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBarComponent.successSnackBar(
                  message: 'your_profile_updated'.tr()
                )
              );
              widget.whenComplete();
              Navigator.pop(context);
            }
            else if (state is EditProfileError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBarComponent.errorSnackBar(
                  message: state.error,
                )
              );
            }
          },
          builder: (context, state) {
            return Form(
              key: formKey,
              child: ListView(
                padding: EdgeInsets.only(left: 16.w, top: 24.h, right: 16.w),
                children: [

                  TextFieldComponent(
                    title: 'full_name'.tr(),
                    hint: 'Cheyenne  Torff',
                    initialValue: fullName,
                    onChanged: (value) => fullName = value,
                  ),

                  SizedBox(height: 16.h),

                  TextFieldComponent(
                    title: 'email'.tr(),
                    hint: 'email@gmail.com',
                    initialValue: email,
                    prefixSvgIcon: AppIcons.email,
                    inputType: TextInputType.emailAddress,
                    onChanged: (value) => email = value,
                  ),

                  SizedBox(height: 16.h),

                  TextFieldComponent(
                    title: 'country_city'.tr(),
                    hint: 'location'.tr(),
                    controller: locationController,
                    prefixSvgIcon: AppIcons.location,
                    onTap: () => CountryPickerComponent.showPicker(
                      onSelected: (country) => locationController.text = country,
                      context: context
                    ),
                    readOnly: true,
                    onChanged: (value) {},
                  ),

                  SizedBox(height: 16.h),

                  TextFieldComponent(
                    title: 'date_of_birthday'.tr(),
                    hint: 'DD.MM.YYYY',
                    controller: birthDayController,
                    onTap: () => DatePickerComponent.datePicker(
                      context: context,
                      onSaveButtonPressed: (date) => birthDayController.text = date
                    ),
                    readOnly: true,
                    onChanged: (value) {},
                  ),

                  SizedBox(height: 16.h),

                  DropDownComponent(
                    title: 'gender'.tr(),
                    initValue: gender,
                    items: {
                      'male' : 'male'.tr(),
                      'female' : 'female'.tr(),
                      'other' : 'other'.tr(),
                    },
                    onChanged: (value) => gender = value,
                  ),

                  SizedBox(height: 16.h),

                  CountryPhoneNumberComponent(
                    initialCountry: number,
                    controller: phoneController,
                  ),

                  MainButtonComponent(
                    text: 'save'.tr(),
                    margin: EdgeInsets.only(top: 32.h),
                    isLoading: state is EditProfileLoading,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<EditProfileCubit>().editProfile(
                          profile: ProfileModel(
                            firstName: fullName,
                            lastName: '',
                            email: email,
                            phone: phoneController.text,
                            gender: gender,
                            birthday: birthDayController.text,
                            city: locationController.text,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
