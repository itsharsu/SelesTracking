import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppThemeData/ThemeData.dart';
import 'package:marketingtrackingapp/Screens/ForgotPassword/ForgotPaswword.dart';
import 'package:marketingtrackingapp/Screens/SignUp&Login/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomThemeData.lighTheme,

      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


