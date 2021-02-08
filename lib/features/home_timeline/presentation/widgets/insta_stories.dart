import 'package:flutter/material.dart';
import 'package:instagramclone/core/constants/constants.dart';



class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Stories",
        style: kTextStyle,
      ),
      Row(
        children: [
          Icon(Icons.play_arrow,color: Colors.black,),
          Text('Watch All', style: kTextStyle,)
        ],
      )
    ],
  );
  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 70.0,
              height: 70.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    "https://images.pexels.com/photos/1759530/pexels-photo-1759530.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  )
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 5.0),
            ),
            index == 0
                ? Positioned(
              right: 17.0,
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 8.0,
                  child: Icon(
                    Icons.add,
                    size: 14.0,
                    color: Colors.white,
                  ),
                ),
            ) : Container()
          ],
        ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          topText,
          stories
        ],
      ),
    );
  }
}
