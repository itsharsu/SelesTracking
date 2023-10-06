import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/App_Theme/AppStrings/app_strings.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/Resuable_Button.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/Reusable_TextField.dart';
import 'package:marketingtrackingapp/Utils/app_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool isUsernameEmpty = true; // Initially, the username field is empty
  bool isEmailEmpty = true;

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
                  child: Column(
                    children: [
                      AppUtils.commonSizedBox(height: 140),
                      Center(
                        child: Text(
                          App_Strings.signUpText,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            AppUtils.commonSizedBox(height: 100),
                            AppUtils.commonContainer(
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(App_Strings.userNameText,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall),
                                      AppUtils.commonSizedBox(width: 2),
                                      const Text(
                                        App_Strings.StarText,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 16,
                                            fontFamily: "inter",
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  ReusableTextField(
                                    controller: usernameController,
                                    hintText: App_Strings.usernameEg,
                                    suffixIcon: Visibility(
                                      visible: !isUsernameEmpty,
                                      child: Icon(
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
                            AppUtils.commonSizedBox(height: 20),
                            AppUtils.commonContainer(
                              height: 80,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(App_Strings.passwordText,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall),
                                      AppUtils.commonSizedBox(width: 2),
                                      const Text(
                                        App_Strings.StarText,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 16,
                                            fontFamily: "inter",
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  ReusableTextField(
                                    controller: passwordController,
                                    hintText: App_Strings.passwordEg,
                                    suffixIcon: const Text(
                                      "Strong",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 12),
                                    ),
                                    suffixIconColor: AppColor.app_iconDone,
                                  )
                                ],
                              ),
                            ),
                            AppUtils.commonSizedBox(height: 20),
                            AppUtils.commonContainer(
                              height: 80,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(App_Strings.emailText,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall),
                                      AppUtils.commonSizedBox(width: 2),
                                      const Text(
                                        App_Strings.StarText,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 16,
                                            fontFamily: "inter",
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  ReusableTextField(
                                    controller: emailController,
                                    hintText: App_Strings.EmailEg,
                                    suffixIcon: Visibility(
                                      visible: !isEmailEmpty,
                                        child: Icon(Icons.done,
                                            color: AppColor.app_iconDone)),
                                    onChanged: (value) {
                                      setState(() {
                                        isEmailEmpty = isFieldEmpty(value);
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ReuableButton(
                  onTap: () {},
                  text: App_Strings.signUpText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
