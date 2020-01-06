import 'package:acecamper_flutter/ble/bleFind.dart';
import 'package:acecamper_flutter/descriptor/slide_right_route.dart';
import 'package:acecamper_flutter/home_page.dart';
import 'package:acecamper_flutter/descriptor/slide_left_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:toast/toast.dart';

import 'descriptor2.dart';

class Descriptor3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _onHorizontalDrag(DragEndDetails details) {
      if(details.primaryVelocity == 0 ) return;

      if(details.primaryVelocity.compareTo(0) == -1){
//        Navigator.of(context).push(SlideLeftRoute(enterWidget: Descriptor3(), oldWidget: this));
      //      print('다음 화면으로!! ');*/
      }
      else
        Navigator.of(context).push(SlideRightRoute(enterWidget: Descriptor2(), oldWidget: this));
//        print('이전 화면으로!! ');
    }


    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) => _onHorizontalDrag(details),
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(child: Container(), flex: 1,),
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('캠핑카와\n멀리 있음',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        RaisedButton(onPressed: (){
                          Navigator.of(context).pushAndRemoveUntil(SlideLeftRoute(enterWidget: HomePage(), oldWidget: this), (Route<dynamic> route) => false);
                        },
                          child: Text('NB\n연결', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                          color: Colors.blue,
                        )
                      ],
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('캠핑카와\n가까이 있음',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        RaisedButton(onPressed: (){
//                          Toast.show("bt 버튼 눌림", context, duration:Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);

                          StreamBuilder<BluetoothState>(
                            stream: FlutterBlue.instance.state,
                            initialData: BluetoothState.unknown,
                            builder: (BuildContext context, AsyncSnapshot snapshot) {
                              final state = snapshot.data;
                              if (state == BluetoothState.on) {
                                Toast.show('ble 찾는 화면으로 이동', context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);

                                Navigator.of(context).pushAndRemoveUntil(SlideLeftRoute(enterWidget: BLEFind(), oldWidget: this), (Route<dynamic> route) => false);
                              } else {
                                Toast.show('bt 안켜짐', context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);

                              }
                            },
                          );

                          /*FutureBuilder<BluetoothState> (
                            future: bleCheck(),
                            builder: (context, snapShot){

                            },
                          );*/
                        },
                          child: Text('BT\n연결', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                          color: Colors.blue,
                        )
                      ],
                    ),
                    flex: 1,
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                    child: Text('NB연결을 선택한 이후 블루투스 연결이\n필요한 경우에는 설정에서 블루투스를\n등록해 주시기 바랍니다.',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,),
                )
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.radio_button_unchecked),
                  Icon(Icons.radio_button_unchecked),
                  Icon(Icons.brightness_1)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}


