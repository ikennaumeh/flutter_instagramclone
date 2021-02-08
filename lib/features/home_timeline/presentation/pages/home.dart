import 'package:flutter/material.dart';
import 'package:instagramclone/features/home_timeline/presentation/widgets/insta_body.dart';

class InstaHome extends StatelessWidget {
  static const String INSTA_HOME_VIEW = "homepage";

  final topBar = AppBar(
    backgroundColor: Color(0xFFf8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt, color: Colors.black,),
    title: SizedBox(
      height: 38.0,
      child: Text('Instagram', style: TextStyle(fontSize: 30.0, fontFamily: 'Billabong', color: Colors.black),),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send,color: Colors.black),
      ),
    ],
  );

  final bottomNavBar = Container(
    color: Colors.white,
    height: 50.0,
    alignment: Alignment.center,
    child: BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(icon: Icon(Icons.home), onPressed: (){}),
          IconButton(icon: Icon(Icons.search), onPressed: null),
          IconButton(icon: Icon(Icons.add_box ), onPressed: null),
          IconButton(icon: Icon(Icons.favorite), onPressed: null),
          IconButton(icon: Icon(Icons.account_box), onPressed: null),
        ],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: topBar,
       body: InstaBody(),
       bottomNavigationBar: bottomNavBar,
    );
  }
}
