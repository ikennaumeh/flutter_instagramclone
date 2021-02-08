import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagramclone/core/constants/constants.dart';

import 'insta_stories.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) =>
      index == 0 ? SizedBox(
        height: deviceSize.height * 0.17,
        child: InstaStories(),)
          : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //1st row
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              "https://images.pexels.com/photos/1759530/pexels-photo-1759530.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        "ikennaumeh",
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  IconButton(icon: Icon(Icons.more_vert), onPressed: null),
                ],
              ),
            ),
          //2nd row
          Flexible(
            fit: FlexFit.loose,
            child: Image.network(
                "https://images.pexels.com/photos/4067754/pexels-photo-4067754.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              fit: BoxFit.cover,
            ),
          ),
          //3rd row
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Icon(
                     FontAwesomeIcons.heart,
                   ),
                   SizedBox(width: 16.0,),
                   Icon(FontAwesomeIcons.comment),
                   SizedBox(width: 16.0,),
                   Icon(FontAwesomeIcons.paperPlane),

                 ],
               ),
                Icon(FontAwesomeIcons.bookmark),
              ],
            ),
          ),
          //4th row
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Liked by ikennaumeh, eightKing and 528,334 others",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/1759530/pexels-photo-1759530.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",

                      ), ),
                  ),
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment...",
                    ),
                  ),
                ),
              ],
            ),
          ),
          //6th row
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("1 Day Ago", style: TextStyle(color: Colors.grey),),
          ),
        ],
      ),
    );
  }
}