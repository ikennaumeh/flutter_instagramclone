import 'package:flutter/material.dart';
import 'package:instagramclone/core/custom_widgets/custom_buttons.dart';
import 'package:instagramclone/core/custom_widgets/custom_textformfield.dart';
import 'package:instagramclone/features/login_signup/presentation/screens/login_screen.dart';

class SignUp extends StatelessWidget {
  static const String SIGN_UP_VIEW ='sign_up_view';

  Widget build(BuildContext context) {
    String _imagePath = 'assets/images/fb.png';
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Center(child: Text('Register', style: TextStyle(color: Colors.black),)),
          elevation: 2.0,
          actions: [
            SizedBox(width: 60.0,)
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 60.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: TabBar(tabs:[
                  Tab(child: Text('PHONE', style: TextStyle(color: Colors.black, fontSize: 18.0),),),
                  Tab(child: Text('EMAIL', style: TextStyle(color: Colors.black, fontSize: 18.0),),),
                ],
                  indicatorColor: Colors.grey,),
              ),
              SizedBox(height: 40.0),

              Expanded(
                  child: TabBarView(children: [
                    PhoneScreen(),
                    EmailScreen(),
                  ]),
                ),

            Align(
              alignment: Alignment.bottomCenter,
              child: FlatButton(
                onPressed: (){
                Navigator.pushNamed(context, LoginScreen.LOGIN_SCREEN_VIEW);
                },
                color: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child:  Align(
                   // alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Image.asset(_imagePath, height: 20.0, width: 20.0,),
                        SizedBox(width: 10.0,),
                        Text(
                          'Back To Login',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
class PhoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey.withOpacity(.7),
                )
              ),
               child: TextFormField(

                 decoration: InputDecoration(
                   fillColor: Colors.black.withOpacity(.7),
                   prefixIcon: Padding(
                     padding: const EdgeInsets.only(left: 10.0, top: 13.0,right: 5.0),
                     child: Text(
                       'NG +234',
                       style: TextStyle(
                         fontSize: 16.0,
                         fontWeight: FontWeight.w500,
                         color: Colors.blue,
                       ),
                     ),
                   ),
                   hintText: 'Phone Number',
                   hintStyle: TextStyle(
                     color: Colors.black.withOpacity(.5),
                   ),
                   border: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.transparent,
                       style: BorderStyle.none
                     ),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       style: BorderStyle.none,
                     ),
                   ),
                 ),
               ),
               ),
          ),
          SizedBox(height: 20.0,),
          Text("You may receive SMS updates from \nInstagram and can opt out at anytime.",
          style: TextStyle(
            color: Colors.black.withOpacity(.5),
          ),),
          SizedBox(height: 40.0,),
          CustomFlatButton(
              onPressed: (){},
              label: 'Next',
              color: Colors.lightBlueAccent,
          textColor: Colors.white,),

        ],

      ),
    );

  }
}
class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: CustomTextFormField(
            hintText: 'Email Address',
          ),
        ),
          SizedBox(height: 40.0,),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14.0),
          child: CustomFlatButton(
            onPressed: (){},
            label: 'Next',
            color: Colors.lightBlueAccent,
            textColor: Colors.white,),
        ),
      ],
    );
   }
}

