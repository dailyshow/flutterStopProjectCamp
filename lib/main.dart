import 'package:acecamper_flutter/login_page.dart';
import 'package:flutter/material.dart';
import 'package:acecamper_flutter/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AceCamper Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//        primarySwatch: Colors.grey
        primaryColor: Colors.white
      ),
      home: SplashPage(),
      routes: <String, WidgetBuilder> {
        '/login_page': (BuildContext context) => new LoginPage()
      },
    );
  }
}

