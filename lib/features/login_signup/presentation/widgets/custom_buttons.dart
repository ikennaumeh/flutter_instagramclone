import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final Color color;
  final String label;
  final Function onPressed;
  final textColor;
  CustomFlatButton({
    @required this.label,
    @required this.onPressed,
    this.textColor,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0,
      ),

      child: FlatButton(
        onPressed: onPressed,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:  Align(
            alignment: Alignment.center,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 17.0,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class CustomActionButton extends StatelessWidget {
  final Color color;
  final String path;
  final String title;
  final Color textColor;
  final Function onPressed;

  CustomActionButton({
    this.path,
    @required this.title,
    @required this.color,
    @required this.onPressed,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: FlatButton(
        onPressed: onPressed,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Image.asset(
                  '$path',
                  width: 25.0,
                  height: 25.0,
                ),),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: textColor,
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