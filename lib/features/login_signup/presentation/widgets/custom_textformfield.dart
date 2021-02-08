import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Function validatorFunction;
  final Function onChangedFunction;
  final bool obscureText;
  final TextInputType keyboardType;

  CustomTextFormField({
    @required this.hintText,
   this.validatorFunction,
     this.onChangedFunction,
    this.keyboardType,
    this.obscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.symmetric(
      horizontal: 30.0,
      vertical: 10.0,
    ),
      child:  Container(
        height: 50.0,

        child: TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.solid,
                width: .7,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.none,
              ),
            ),
          ),

          validator: validatorFunction,
          onChanged: onChangedFunction,
          obscureText: obscureText,
        ),
      ),
    );
  }
}


//class SignUp extends StatelessWidget {
//  static const String SIGN_UP_VIEW ='sign_up_view';
//  Widget build(BuildContext context) {
//    String _imagePath = 'assets/images/fb.png';
//    return DefaultTabController(
//      length: 2,
//      child: Scaffold(
//        backgroundColor: Colors.white,
//        appBar: AppBar(
//          backgroundColor: Colors.white,
//          leading: InkWell(
//            onTap: (){
//              Navigator.pop(context);
//            },
//            child: Icon(
//              Icons.arrow_back_ios,
//              color: Colors.black,
//            ),
//          ),
//          title: Center(child: Text('Register', style: TextStyle(color: Colors.black),)),
//          elevation: 2.0,
//          actions: [
//            SizedBox(width: 60.0,)
//          ],
//        ),
//        body: SingleChildScrollView(
//          child: SafeArea(
//            child: Column(
//              children: [
//                SizedBox(height: 60.0,),
//                Padding(
//                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
//                  child: TabBar(tabs:[
//                    Tab(child: Text('PHONE', style: TextStyle(color: Colors.black, fontSize: 18.0),),),
//                    Tab(child: Text('EMAIL', style: TextStyle(color: Colors.black, fontSize: 18.0),),),
//                  ],
//                    indicatorColor: Colors.grey,),
//                ),
//                SizedBox(height: 40.0),
//                TabBarView(
//                    children: [
//                      PhoneScreen(),
//                      EmailScreen(),
//                    ]),
//                Align(
//                  alignment: Alignment.bottomCenter,
//                  child: CustomActionButton(
//                    path: _imagePath,
//                    title: 'Sign up with Facebook',
//                    onPressed: (){},
//                    color: Colors.blue,
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//
//  }
//}
//

//
