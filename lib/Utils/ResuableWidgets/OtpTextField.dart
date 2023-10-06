  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
  import 'package:pin_code_fields/pin_code_fields.dart';

  class OtpTextField extends StatelessWidget {
    final TextEditingController? controller;
    const OtpTextField({super.key,required this.controller});

    @override
    Widget build(BuildContext context) {
      return PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        cursorColor: AppColor.app_primary,
        enableActiveFill: true,
        textStyle: const TextStyle(fontSize: 24, color: AppColor.app_black, fontFamily: "inter"),
        keyboardType: TextInputType.number,
        cursorHeight: 30,
        pinTheme: PinTheme(
          borderRadius: BorderRadius.circular(10),
          shape: PinCodeFieldShape.box,
          fieldHeight: 120,
          fieldWidth: 80,
          activeColor: AppColor.app_textFieldBorder,
          inactiveColor: AppColor.app_textFieldBorder,
          selectedColor: AppColor.app_textFieldBorder,
          activeFillColor: AppColor.app_white,
          selectedFillColor: AppColor.app_white,
          inactiveFillColor: AppColor.app_white,
          // borderWidth: 1,
          inactiveBorderWidth: 1,
          disabledBorderWidth: 1,
          selectedBorderWidth: 1,
          activeBorderWidth: 1,
        ),
      );
    }
  }
