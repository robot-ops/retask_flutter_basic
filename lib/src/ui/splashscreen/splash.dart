// ignore_for_file: prefer_const_constructors
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:retask_flutter_basic/src/ui/homepage/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  _navigateHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('Images/logo_ig.png'),
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.black,
      nextScreen: Home(),
    );
  }
}
