import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/core/validation/validation.dart';
import 'package:instagramclone/features/home_timeline/presentation/pages/home.dart';
import 'file:///C:/Users/queency/AndroidStudioProjects/instagram_clone/lib/features/login_signup/presentation/widgets/custom_buttons.dart';
import 'file:///C:/Users/queency/AndroidStudioProjects/instagram_clone/lib/features/login_signup/presentation/widgets/custom_textformfield.dart';
import 'package:instagramclone/features/login_signup/presentation/screens/forgot_password_screen.dart';
import 'package:instagramclone/features/login_signup/presentation/screens/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
class LoginScreen extends StatefulWidget {
static const String LOGIN_SCREEN_VIEW = "login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

enum FormType{
  login,
  sign_up,
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin{
  final _formKey = GlobalKey<FormState>();
  String _email, _password;
  String _imagePath = 'assets/images/fb.png';
  FormType _formType = FormType.login;

  bool validateAndSave(){
    final form = _formKey.currentState;
    if(form.validate()){
       form.save();
       return true;
    } else {
      return false;
    }
  }

  void validateAndSubmit() async{
    if(validateAndSave()) {
      try{
       if(_formType == FormType.login){
         await Firebase.initializeApp();
         final user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
           Navigator.pushNamed(context, InstaHome.INSTA_HOME_VIEW);

       } else {
         await Firebase.initializeApp();
         final user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
         print(_email);
         print(_password);
       }
      } catch (e) {
        print(e);
      }

    }
  }

  void moveToSignUp(){
    _formKey.currentState.reset();
    setState(() {
      _formType = FormType.sign_up;
    });
  }
  void moveToLogin(){
    _formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  @override
  Widget build(BuildContext context) {

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
                 children: buildInputs() + buildSubmitButton(),

               ),
             ),
           ],
         ),
       ),
     );
   }

   List<Widget> buildInputs(){
    return [
      CustomTextFormField(
        keyboardType: TextInputType.emailAddress,
        hintText: "Phonenumber, username or email",
        validatorFunction: (input) => validateEmail(input),
        onChangedFunction: (input) => _email = input,
      ),
      CustomTextFormField(
        hintText: 'Password',
        validatorFunction: (input) => validatePassword(input),
        onChangedFunction: (input) => _password = input,
        obscureText: true,
      ),
    ];
   }

   List<Widget> buildSubmitButton(){
    if(_formType ==FormType.login){
      return [
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
          onPressed: validateAndSubmit,
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
            onTap: moveToSignUp,
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
      ];
    } else {
       return [
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
           label: 'Sign Up',
           onPressed: validateAndSubmit,
           color: Colors.blue,
           textColor: Colors.white,
         ),
         SizedBox(height: 10.0,),
         Row(children: [
           SizedBox(width: 30.0,),
           Text("Already have an account?",
             style: TextStyle(
               fontSize: 17.0,
               fontWeight: FontWeight.w500,
             ),
           ),
           SizedBox(
             width: 10.0,
           ),
           InkWell(
             onTap: moveToLogin,
             child: Text("Log In",
               style: TextStyle(
                 color: Colors.blue,
                 fontSize: 17.0,
                 fontWeight: FontWeight.w500,
               ),
             ),
           ),
         ],
         ),
       ];

    }

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



