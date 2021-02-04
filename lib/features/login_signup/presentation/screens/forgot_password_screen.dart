import 'package:flutter/material.dart';
import 'package:instagramclone/core/custom_widgets/custom_buttons.dart';
import 'package:instagramclone/core/custom_widgets/custom_textformfield.dart';
import 'package:instagramclone/features/login_signup/presentation/screens/login_screen.dart';
import 'package:instagramclone/features/login_signup/presentation/screens/singup_screen.dart';

class ForgotPassword extends StatelessWidget {
  static const String FORGOT_PASSWORD_SCREEN = 'forgot_password_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: null,
        title: Center(
          child: Text(
            'Instagram',
            style: TextStyle(
              fontFamily: 'Billabong',
              fontSize: 40.0,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          SizedBox(width: 60.0,),
        ],
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.lock_outline,
                      size: 60.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Trouble Logging In?',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(.9),
                  ),
                ),
                SizedBox(height: 5.0,),
                Text(
                  "Enter your email, phone or username\nand we'll send you a link to get back\ninto your account.",
                  style: TextStyle(
                    color: Colors.black.withOpacity(.6),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: CustomTextFormField(
                      hintText: 'Email, Phone, or Username',
                  ),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: CustomFlatButton(
                     onPressed: (){},
                    label: 'Send Login Link',
                    textColor: Colors.white,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: orDivider(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, SignUp.SIGN_UP_VIEW);
                  },
                  child: Text(
                    'Create New Account',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                FlatButton(
                  onPressed: (){
                     Navigator.pushNamed(context, LoginScreen.LOGIN_SCREEN_VIEW);
                  },
                  color: Colors.grey.withOpacity(.2),

                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child:  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Back To Login',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget orDivider() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(width: 30.0,),
      Expanded(
        child: Divider(
          color: Colors.black.withOpacity(.4),
          thickness: 1,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          'OR',
          style: TextStyle(
              color: Colors.black.withOpacity(.4),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      Expanded(
        child: Divider(
          color: Colors.black.withOpacity(.4),
          thickness: 1,
        ),
      ),
      SizedBox(width: 30.0,),
    ],
  );
}