import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('블루투스 설정', style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('컨트롤러A', style: TextStyle(fontSize: 25), textAlign: TextAlign.center,),
                  Text('AA:BB:CC', style: TextStyle(fontSize: 25), textAlign: TextAlign.center,),
                  GestureDetector(
                    onTap: (){
                      _showDialog();
                    },
                      child: Icon(Icons.cancel, )
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){

                },
                child: Card(
                  color: Colors.blue[500],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text('컨트롤러 BT 재등록', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){

                },
                child: Card(
                  color: Colors.red[500],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text('로그아웃', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text('삭제 알림 창'),
          content: Text('등록하신 컨트롤러 정보를 삭제하시겠습니까?'),
          actions: <Widget>[
            FlatButton(
                child: Text('취소'),
                onPressed: (){
                  Navigator.pop(context);
                }),
            FlatButton(
                child: Text('삭제'),
                onPressed: (){

            })
          ],
        );
      }
    );
  }
}
