import 'package:acecamper_flutter/device_control.dart';
import 'package:acecamper_flutter/gps_page.dart';
import 'package:acecamper_flutter/settings_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool saveModeChk = false;
  bool useModeChk = false;

  var saveColor = Colors.white;
  var useColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SettingsPage())
                    );
                  },
                  child: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Center(
                child: Text(
                  '차량 상태',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[             
              Flexible(
                  child: Image(image: AssetImage('images/car_condition.png')),
                  flex: 1),
              Flexible(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => GPSPage()));
                      },
                      child: Image(image: AssetImage('images/gps.png'))),
                  flex: 1)
            ],
          ),
          Expanded(
            flex: 2,
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '배터리',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '발전기 연료',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '온도',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '습도',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '청수',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '오수',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DeviceControl()));
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                    Container(
                      child: Text(
                        '기기 제어',
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: Text(
                        '',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                      ButtonTheme(
                        height: 100,
                        child: RaisedButton(
                          onPressed: () {
                            _saveModeChangeColor();
                            if (useModeChk) {
                              useColor = Colors.white;
                              useModeChk = false;
                            }
                          },
                          shape: CircleBorder(),
                          color: saveColor,
                          child: Text(
                            '보존 모드',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                    ),

                      ButtonTheme(
                        height: 100,
                        child: RaisedButton(
                            onPressed: () {
                              _useModeChangeColor();
                              if (saveModeChk) {
                                saveColor = Colors.white;
                                saveModeChk = false;
                              }
                            },
                            shape: CircleBorder(),
                            color: useColor,
                            child: Text(
                              '사용 모드',
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _saveModeChangeColor() {
    setState(() {
      if(saveModeChk) {
        saveModeChk = !saveModeChk;
        saveColor = Colors.white;
        print("saveModeChk : $saveModeChk");
      } else {
        saveModeChk = !saveModeChk;
        saveColor = Colors.orange;
        print("saveModeChk : $saveModeChk");
      }
    });
  }

  _useModeChangeColor() {
    setState(() {
      if(useModeChk) {
        useModeChk = !useModeChk;
        useColor = Colors.white;
        print("useModeChk : $useModeChk");
      } else {
        useModeChk = !useModeChk;
        useColor = Colors.orange;
        print("useModeChk : $useModeChk");
      }
    });
  }
}
