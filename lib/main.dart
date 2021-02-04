import 'package:flutter/material.dart';
import 'package:instagramclone/features/login_signup/presentation/screens/forgot_password_screen.dart';
import 'package:instagramclone/features/login_signup/presentation/screens/singup_screen.dart';
import 'features/login_signup/presentation/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      initialRoute: LoginScreen.LOGIN_SCREEN_VIEW,
      routes: {
        LoginScreen.LOGIN_SCREEN_VIEW : (context) => LoginScreen(),
        SignUp.SIGN_UP_VIEW : (context) => SignUp(),
        ForgotPassword.FORGOT_PASSWORD_SCREEN: (context) => ForgotPassword(),
      },
    );
  }
}

