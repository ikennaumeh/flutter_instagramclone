import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/core/custom_widgets/custom_buttons.dart';
import 'package:instagramclone/core/custom_widgets/custom_textformfield.dart';
import 'package:instagramclone/features/login_signup/presentation/screens/forgot_password_screen.dart';
import 'package:instagramclone/features/login_signup/presentation/screens/singup_screen.dart';

class LoginScreen extends StatelessWidget {
static const String LOGIN_SCREEN_VIEW = "login_screen";

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String _email, _password;
    String _imagePath = 'assets/images/fb.png';
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [

            SizedBox(
              height: 80.0,
            ),
            Text(
              'Instagram',
              style: TextStyle(
                fontFamily: 'Billabong',
                fontSize: 60.0,
                ),
              ),

               Padding(
                 padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                 child: CustomActionButton(
                   path: _imagePath,
                   title: 'Continue with Facebook',
                   onPressed: (){},
                   color: Colors.blue,
                   ),
               ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: orDivider(),
                ),
             Form(
               key: _formKey,
               child: Column(
                 children: [
                 CustomTextFormField(
                   hintText: "Phonenumber, username or email",
                   validatorFunction: (input) => !input.contains('@') ? 'Please enter a valid email' : null,
                   onSavedFunction: (input) => _email = input,
                 ),
                  CustomTextFormField(
                      hintText: 'Password',
                      validatorFunction: (input) => input.length < 6
                          ? 'Must be at least 6 characters'
                          : null,
                      onSavedFunction: (input) => _password = input,
                    obscureText: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, ForgotPassword.FORGOT_PASSWORD_SCREEN);
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15.0
                          ),
                        ),
                      ),
                      SizedBox(width: 50.0,),

                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                   CustomFlatButton(
                   label: 'Log In',
                   onPressed: (){},
                   color: Colors.blue,
                   textColor: Colors.white,
                   ),
                  SizedBox(height: 10.0,),
                  Row(children: [
                    SizedBox(width: 30.0,),
                    Text("Don't have an account?",
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, SignUp.SIGN_UP_VIEW);
                      },
                      child: Text("Sign up",
                      style: TextStyle(
                      color: Colors.blue,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                   ],
                  ),

                 ]
               ),
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



