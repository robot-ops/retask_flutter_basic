// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final stories = Expanded(
    child: Padding(
      padding: EdgeInsets.only(top: 3.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('images/sqirud.png')),
              ),
            ),
            index == 0
                ? Positioned(
                    right: 10.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 10.0,
                      child: Icon(Icons.add, size: 14.0, color: Colors.white),
                    ),
                  )
                : Container(),
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
        children: <Widget>[
          stories,
        ],
      ),
    );
  }
}
