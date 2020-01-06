import 'package:acecamper_flutter/descriptor/descriptor2.dart';
import 'package:acecamper_flutter/descriptor/slide_left_route.dart';
import 'package:flutter/material.dart';

class Descriptor1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _onHorizontalDrag(DragEndDetails details) {
      if(details.primaryVelocity == 0 ) return;

      if(details.primaryVelocity.compareTo(0) == -1)
        Navigator.of(context).push(SlideLeftRoute(enterWidget: Descriptor2(), oldWidget: this));
  //      print('다음 화면으로!! ');*/
//      else
//      print('이전 화면으로!! ');
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
                child: Text("캠핑카 주변에서\nApp을 실행중이신가요?\n\n그렇다면 블루투스 연결을\n사용하시기 바랍니다.", style: TextStyle(
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
                    Icon(Icons.brightness_1),
                    Icon(Icons.radio_button_unchecked),
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

