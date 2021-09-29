// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retask_flutter_basic/src/profile/update.dart';
import 'package:retask_flutter_basic/src/ui/homepage/content_list.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(
            child: ContentList(
          value: Data(status: '', imgUrl: ''),
        ))
      ],
    );
  }
}
