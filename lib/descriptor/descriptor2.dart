import 'package:acecamper_flutter/descriptor/Descriptor3.dart';
import 'package:acecamper_flutter/descriptor/slide_left_route.dart';
import 'package:acecamper_flutter/descriptor/slide_right_route.dart';
import 'package:flutter/material.dart';

import 'descriptor1.dart';

class Descriptor2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _onHorizontalDrag(DragEndDetails details) {
      if(details.primaryVelocity == 0 ) return;

      if(details.primaryVelocity.compareTo(0) == -1)
        Navigator.of(context).push(SlideLeftRoute(enterWidget: Descriptor3(), oldWidget: this));
      //      print('다음 화면으로!! ');*/
      else
        Navigator.of(context).push(SlideRightRoute(enterWidget: Descriptor1(), oldWidget: this));
//        print('이전 화면으로!! ');
    }

    return GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) => _onHorizontalDrag(details),
        child: Scaffold(
          body: Column(
            children: <Widget>[
              Expanded(
          flex: 1,
              child: Container(),
          ),
              Expanded(
                flex: 1,
                    child : Text('캠핑카와 먼 곳에서 App을\n실행중이신가요?\n\n그렇다면 NB-IoT 연결을\n사용하시기 바랍니다.',
                        style: TextStyle(
                          color: Colors.black, fontSize: 26,
                        ),
                      textAlign: TextAlign.center,
                    ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.radio_button_unchecked),
                    Icon(Icons.brightness_1),
                    Icon(Icons.radio_button_unchecked)
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}

