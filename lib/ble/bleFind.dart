import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class BLEFind extends StatefulWidget {
  @override
  _BLEFindState createState() => _BLEFindState();
}

class _BLEFindState extends State<BLEFind> {
  static FlutterBlue flutterBlue = FlutterBlue.instance;

  var scanSubscription = flutterBlue.scan().listen((scanResult) {
    var device = scanResult.device;
    print('${device.name} found!! rssi: ${scanResult.rssi}\n');
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
                child: Container()
            ),
            Flexible(
              flex: 2,
                child: Column(
                  children: <Widget>[
                    SizedBox(child: CircularProgressIndicator(strokeWidth: 6,),
                      height: 240,
                      width: 240,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                        child: Text('블루투스 장치를\n검색중입니다.', style: TextStyle(fontSize: 20),)
                    )
                  ],
                )
            ),
            Flexible(
              flex: 1,
                child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
