import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rah_e_haq/resoureces/nav.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => Nav())));
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
          child: Image
              .asset(
              'assets/images/ground1.png', width: MediaQuery.of(
              context)
              .size
              .width,
        height: MediaQuery
          .of(context)
          .size
          .height),);
  }
}