import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppAssets/app_assets.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/App_Theme/AppStrings/app_strings.dart';
import 'package:marketingtrackingapp/Screens/SignUp&Login/SignUpScreen.dart';
import 'package:marketingtrackingapp/Utils/app_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.app_primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Image(
              image: AssetImage(
                App_Assets.splashImage,
              ),
              height: 180,
              width: 180,
            ),
          ),
          AppUtils.commonSizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                App_Strings.splashText1,
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.normal,color: AppColor.app_white,),
              ),
              Text(
                App_Strings.splashText2,
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.normal,color: AppColor.app_white,),
              )
            ],
          )
        ],
      ),
    );
  }
}
