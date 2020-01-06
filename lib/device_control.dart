import 'package:acecamper_flutter/deviceControl/onOffRemote.dart';
import 'package:acecamper_flutter/deviceControl/tempRemote.dart';
import 'package:acecamper_flutter/deviceControl/tvRemote.dart';
import 'package:flutter/material.dart';

class DeviceControl extends StatefulWidget {
  @override
  _DeviceControlState createState() => _DeviceControlState();
}

class _DeviceControlState extends State<DeviceControl> {
//  bool swap = true;
  int swap = 0;

  @override
  Widget build(BuildContext context) {

    Widget swapWidget = new Container();
    if(swap == 1) {
      swapWidget = TempRemote();
    } else if(swap == 2) {
      swapWidget = TvRemote();
    } else if(swap == 3) {
      swapWidget = OnOffRemote();
    }

    var swapTile = new Container(
      child: swapWidget,
    );


    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            child: Text('기기 제어 화면', style: TextStyle( fontSize: 20), textAlign: TextAlign.center,),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: remoteSelectButton('에어컨', 1),
              ),
              Expanded(
                flex: 1,
                child: remoteSelectButton('히터', 1),
              ),
              Expanded(
                flex: 1,
                child: remoteSelectButton('TV', 2),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: remoteSelectButton('냉장고',3),
              ),
              Expanded(
                  flex: 1,
                  child: remoteSelectButton('온수기',3)
              ),
              Expanded(
                  flex: 1,
                  child: remoteSelectButton('등',3)
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: remoteSelectButton('등',3)
              ),
              Expanded(
                  flex: 1,
                  child: remoteSelectButton('등',3)
              ),
              Expanded(
                  flex: 1,
                  child: remoteSelectButton('등',3)
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: swapTile
          )
        ],
      ),
    );
  }


  // 버튼에 공통으로 적용한 속성
  Widget remoteSelectButton(String text, int index) {
    return RaisedButton(onPressed: (){
          setState(() {
            swap = index;
          });
        },
//      elevation: 3,
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      color: Colors.white,
      child: Text('$text', style: TextStyle(fontSize: 14, ), textAlign: TextAlign.center,),
        );
      }



}

