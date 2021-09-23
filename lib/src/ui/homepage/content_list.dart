// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retask_flutter_basic/src/ui/homepage/stories.dart';
import 'package:retask_flutter_basic/src/ui/widget/status.dart';

class ContentList extends StatefulWidget {
  const ContentList({Key? key}) : super(key: key);

  @override
  _ContentListState createState() => _ContentListState();
}

class _ContentListState extends State<ContentList> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => index == 0
            ? SizedBox(
                child: Stories(),
                height: deviceSize.height * 0.15,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('images/profile_icon.png')),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              "User",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        IconButton(onPressed: null, icon: Icon(Icons.more_vert))
                      ],
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Image.network(
                        "https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s900-c-k-c0x00ffffff-no-rj",
                        fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.favorite_outline),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.mode_comment_outlined),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.send_outlined),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: null, icon: Icon(Icons.bookmark_outline))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Liked by ... and other",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Status(content: "This is flutter basic")
                ],
              ));
  }
}
