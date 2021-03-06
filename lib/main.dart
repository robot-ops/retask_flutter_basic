// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retask_flutter_basic/src/profile/profile.dart';
import 'package:retask_flutter_basic/src/profile/update.dart';
import 'src/ui/homepage/home.dart';
import 'src/ui/splashscreen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          primaryTextTheme: const TextTheme(
              bodyText1: TextStyle(color: Colors.white, fontFamily: "Aveny")),
          textTheme:
              const TextTheme(bodyText1: TextStyle(color: Colors.white))),
      home: const Splash(),
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => Home(),
        '/Profile': (BuildContext context) => Profile(),
        '/update': (BuildContext context) => Update(),
      },
    );
  }
}
