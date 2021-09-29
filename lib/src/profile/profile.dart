// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("User",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        elevation: 0.0,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
                onPressed: null,
                icon: Icon(Icons.more_vert, color: Colors.white)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(22.0, 35.0, 22.0, 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('images/sqirud.png')),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('0',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18.0)),
                          SizedBox(height: 5.0),
                          Text('Posts', style: TextStyle(fontSize: 15.0))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('0',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18.0)),
                          SizedBox(height: 5.0),
                          Text('Followers', style: TextStyle(fontSize: 15.0))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('0',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18.0)),
                          SizedBox(height: 5.0),
                          Text('Following', style: TextStyle(fontSize: 15.0))
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 15.0),
                    child: Text('User',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 30.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(width: 0.1, color: Colors.black)),
                    child: Center(
                        child: TextButton(
                      onPressed: null,
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0),
                      ),
                    )),
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
