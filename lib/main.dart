import 'package:flutter/material.dart';
import 'package:instagramclone/features/home_timeline/presentation/pages/home.dart';
import 'package:instagramclone/features/login_signup/presentation/screens/forgot_password_screen.dart';
import 'package:instagramclone/features/login_signup/presentation/screens/signup_screen.dart';
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
      theme: ThemeData(
       // primarySwatch: Colors.white,
        //primaryColor: Colors.black,
       // primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(
          headline6: TextStyle( fontFamily: "Aveny"),
        ),
       // textTheme: TextTheme(headline6: TextStyle(color: Colors.black),),
      ),
      initialRoute: LoginScreen.LOGIN_SCREEN_VIEW,
      routes: {
        LoginScreen.LOGIN_SCREEN_VIEW : (context) => LoginScreen(),
        SignUp.SIGN_UP_VIEW : (context) => SignUp(),
        ForgotPassword.FORGOT_PASSWORD_SCREEN: (context) => ForgotPassword(),
        InstaHome.INSTA_HOME_VIEW: (context) => InstaHome(),
      },
    );
  }
}

