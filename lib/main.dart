import 'dart:async';
import 'package:flutter/material.dart';
import './auth.dart';
import './rootPage.dart';
import './homeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/RootPage': (BuildContext context) => RootPage(auth: Auth(),)
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/RootPage');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC54C82),
      body: Center(
        child: CircleAvatar(
          child: Image.asset('assets/logo/logo1.png'),
          backgroundColor: Colors.white,
          radius: 120.0,
        ),
      ),
    );
  }
}