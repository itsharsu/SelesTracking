import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/App_Theme/AppStrings/app_strings.dart';
import 'package:marketingtrackingapp/Screens/ForgotPassword/ForgotPaswword.dart';
import 'package:marketingtrackingapp/Screens/Functionalities/FunctionScreen.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/CommanLinkButton.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/Resuable_Button.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/Reusable_TextField.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/Switches.dart';
import 'package:marketingtrackingapp/Utils/app_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isUsernameEmpty = true;
  bool isSwitched = false;

  bool isFieldEmpty(String text) {
    return text.trim().isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        App_Strings.loginText,
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
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword(),));
                                },
                                child: const Text(App_Strings.ForgotPass,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColor.app_forgotPass,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter"))),
                          ),
                          AppUtils.commonSizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                App_Strings.remember,
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                              ReusableCupertinoSwitch(
                                activeColor: AppColor.app_iconDone,
                                thumbColor: AppColor.app_white,
                                trackColor: AppColor.app_grey,
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                },
                              )
                            ],
                          ),

                          AppUtils.commonContainer(
                            margin: EdgeInsets.only(top: 20,bottom: 10),
                            child: Align(
                              heightFactor: 4,
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: App_Strings.terms,
                                        style:
                                        Theme.of(context).textTheme.bodySmall,
                                        children: <InlineSpan>[
                                          WidgetSpan(
                                            alignment:
                                            PlaceholderAlignment.baseline,
                                            baseline: TextBaseline.alphabetic,
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(App_Strings.withOur,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall),
                                                AppUtils.commonSizedBox(width: 5),
                                                LinkButton(urlLabel: App_Strings.conditions, url: "")
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TaskAssign(),));
                },
                text: App_Strings.loginText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
