import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/login_page');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/splash.jpg"), fit: BoxFit.cover
                )
            ),
          ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text('RV HUG', style: TextStyle(fontSize: 80, color: Colors.white),),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(),
              )
            ],
          )
        ],
      ),
    );
  }
}
