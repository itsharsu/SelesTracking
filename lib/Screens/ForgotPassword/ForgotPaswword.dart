import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppAssets/app_assets.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/App_Theme/AppStrings/app_strings.dart';
import 'package:marketingtrackingapp/Screens/ForgotPassword/VerificationCode.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/CommanLinkButton.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/Resuable_Button.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/Reusable_TextField.dart';
import 'package:marketingtrackingapp/Utils/app_utils.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
      child: Container(
        color: AppColor.app_white,
        child: SafeArea(

          child: Scaffold(
            backgroundColor: AppColor.app_white,
            body: Column(
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
                              App_Strings.ForgotPassword,
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
                          AppUtils.commonContainer(
                            height: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(App_Strings.EmailAddress,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                  ],
                                ),
                                ReusableTextField(
                                  // controller: usernameController,
                                  hintText: App_Strings.EmailEg,
                                  suffixIcon: Visibility(
                                    visible: !isUsernameEmpty,
                                    child: const Icon(
                                      Icons.done,
                                      color: AppColor.app_iconDone,
                                    ),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      isUsernameEmpty = isFieldEmpty(value);
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          AppUtils.commonContainer(
                            margin: EdgeInsets.only(top: 25, bottom: 10),
                            child: Align(
                                heightFactor: 4,
                                alignment: Alignment.bottomCenter,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      App_Strings.instructionOfForgotPass,
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                    Text(
                                      App_Strings.instructionOfForgotPass2,
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    )
                                  ],
                                )),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCode(),),);
                    },
                    text: App_Strings.confirmMail,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
