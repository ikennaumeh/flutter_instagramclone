import 'package:flutter/material.dart';

import 'insta_list.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child: InstaList()),
      ],
    );
  }
}


