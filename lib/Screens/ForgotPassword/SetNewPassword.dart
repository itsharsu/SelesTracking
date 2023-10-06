import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppAssets/app_assets.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/App_Theme/AppStrings/app_strings.dart';
import 'package:marketingtrackingapp/Screens/ForgotPassword/VerificationCode.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/CommanLinkButton.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/Resuable_Button.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/Reusable_TextField.dart';
import 'package:marketingtrackingapp/Utils/app_utils.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  bool isUsernameEmpty = true;

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
                    padding: EdgeInsets.symmetric(horizontal: 10),
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
                            App_Strings.NewPassword,
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ),
                        AppUtils.commonSizedBox(height: 180),
                        AppUtils.commonContainer(
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(App_Strings.passwordText,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                ],
                              ),
                              ReusableTextField(
                                // controller: usernameController,
                                hintText: App_Strings.passwordText,
                                // suffixIcon: Visibility(
                                //   visible: !isUsernameEmpty,
                                //   child: const Icon(
                                //     Icons.done,
                                //     color: AppColor.app_iconDone,
                                //   ),
                                // ),
                                // onChanged: (value) {
                                //   setState(() {
                                //     isUsernameEmpty = isFieldEmpty(value);
                                //   });
                                // },
                              ),
                            ],
                          ),
                        ),
                        AppUtils.commonSizedBox(height: 20),
                        AppUtils.commonContainer(
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(App_Strings.con_passwordText,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                ],
                              ),
                              ReusableTextField(
                                // controller: usernameController,
                                hintText: App_Strings.con_passwordText,
                                // suffixIcon: Visibility(
                                //   visible: !isUsernameEmpty,
                                //   child: const Icon(
                                //     Icons.done,
                                //     color: AppColor.app_iconDone,
                                //   ),
                                // ),
                                // onChanged: (value) {
                                //   setState(() {
                                //     isUsernameEmpty = isFieldEmpty(value);
                                //   });
                                // },
                              ),
                            ],
                          ),
                        ),
                        AppUtils.commonSizedBox(height: 70),
                        AppUtils.commonContainer(
                          margin: const EdgeInsets.only(top: 18,bottom: 10),
                          child: Align(
                            heightFactor: 7,
                            alignment: Alignment.bottomCenter,
                            child:  Text(
                              App_Strings.instruction,
                              style:
                              Theme.of(context).textTheme.bodySmall,
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => VerificationCode(),
                    //   ),
                    // );
                  },
                  text: App_Strings.reset_password,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
