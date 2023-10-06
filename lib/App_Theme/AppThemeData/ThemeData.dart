import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';

class CustomThemeData{
  static ThemeData lighTheme = ThemeData(
    primaryColor: AppColor.app_primary,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: AppColor.app_black,fontFamily: "inter"),//splashScreen
      displayMedium: TextStyle(fontSize: 26,fontWeight: FontWeight.w600,color: AppColor.app_black,fontFamily: "inter"),//display larger text
      displaySmall: TextStyle(fontFamily: "inter", fontWeight: FontWeight.w500, fontSize: 14, color: AppColor.app_black, ),// rememember switch
      bodyLarge: TextStyle(fontSize: 22,fontWeight: FontWeight.normal,),//nothing to use Now
      bodyMedium: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: AppColor.app_text2,fontFamily: "inter"),//text input Data
      bodySmall: TextStyle(fontSize: 14,fontFamily: "inter",color: AppColor.app_grey),//hint style and lable style

      labelSmall: TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color: AppColor.app_white,fontFamily: "inter",letterSpacing: 1),
      labelMedium: TextStyle(fontSize: 16,fontWeight: FontWeight.w700, fontFamily: "inter"),//tebBar lable


      headlineSmall: TextStyle(fontSize: 14,fontFamily: "inter",color: AppColor.app_primary),
      headlineLarge: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: AppColor.app_black,fontFamily: "inter"),
      titleSmall: TextStyle(fontSize: 14,fontFamily: "inter",color: AppColor.app_grey,fontWeight: FontWeight.w400, ),
    ),
    // colorScheme: ColorScheme(brightness: Brightness.light, primary: AppColor.app_white, onPrimary: AppColor.app_white, secondary: AppColor.app_white, onSecondary: AppColor.app_white, error: error, onError: onError, background: background, onBackground: onBackground, surface: surface, onSurface: onSurface)
  );
}