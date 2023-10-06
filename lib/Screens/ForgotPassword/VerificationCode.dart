import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppAssets/app_assets.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/App_Theme/AppStrings/app_strings.dart';
import 'package:marketingtrackingapp/Screens/ForgotPassword/SetNewPassword.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/OtpTextField.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/Resuable_Button.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/Reusable_TextField.dart';
import 'package:marketingtrackingapp/Utils/app_utils.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({super.key});

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  bool isUsernameEmpty = true;
  TextEditingController OtpController = TextEditingController();
  int secondRemaining = 30;
  bool _enableResend = false;
  Timer? _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (secondRemaining != 0) {
        setState(() {
          secondRemaining--;
        });
      } else {
        setState(() {
          _enableResend = true;
          _timer?.cancel();
        });
      }
    });
  }

  void _resendCode() {
    //other code here
    setState(() {
      secondRemaining = 30;
      _enableResend = false;
    });
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  bool isFieldEmpty(String text) {
    return text.trim().isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColor.app_white,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: AppUtils.commonContainer(
                              height: 60,
                              width: 60,
                              // margin: EdgeInsets.only(left: 20,top: 20),
                              decoration: AppUtils.commonBoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor
                                    .BackButtonbgColor, // Grey circle background color
                              ),
                              child: const Icon(
                                Icons.arrow_back_rounded,
                                size: 30,
                                color: AppColor.app_black, // Icon color
                              ),
                            ),
                          ),
                        ),
                        AppUtils.commonSizedBox(height: 60),
                        Center(
                          child: Text(
                            App_Strings.verification,
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ),
                        const Image(
                          image: AssetImage(
                            App_Assets.ForgotPassImage,
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        AppUtils.commonSizedBox(height: 50),
                        OtpTextField(
                          controller: OtpController,
                        ),
                        !_enableResend
                            ? AppUtils.commonContainer(
                                margin:
                                    const EdgeInsets.only(top: 25, bottom: 10),
                                child: Align(
                                  heightFactor: 5,
                                  alignment: Alignment.bottomCenter,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '00:$secondRemaining',
                                        style: TextStyle(
                                            color: AppColor.app_black,
                                            fontSize: 14),
                                      ),
                                      AppUtils.commonSizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "resend confirmation code.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : AppUtils.commonContainer(
                                margin: const EdgeInsets.only(
                                  top: 40,
                                ),
                                child: Align(
                                  heightFactor: 2,
                                  alignment: Alignment.bottomCenter,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero),
                                    onPressed: () {
                                      _resendCode();
                                    },
                                    child: Text(
                                      "Resend Code",
                                      style: TextStyle(
                                        color: AppColor.app_primary,
                                        fontSize: 14,
                                        fontFamily: "inter",
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ReuableButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SetNewPassword()));
                  },
                  text: App_Strings.confirmOtp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
