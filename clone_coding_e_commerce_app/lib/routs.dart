import 'dart:js';

import 'package:clone_coding_e_commerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:clone_coding_e_commerce_app/screens/login_success/login_success_screen.dart';
import 'package:clone_coding_e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:clone_coding_e_commerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// Use name route
// All our routes will ne availavle here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen()
};
