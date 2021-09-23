// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retask_flutter_basic/src/ui/homepage/content.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 1.0,
        title: SizedBox(
          height: 45.0,
          child: Image.asset('images/insta_logo_white.png'),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.messenger_outline_rounded)),
        ],
      ),
      body: Content(),
    );
  }
}
