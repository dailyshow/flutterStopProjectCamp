import 'package:acecamper_flutter/descriptor/descriptor1.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _chkValue = false;

  void _chkValueChanged(bool value) => setState(() => _chkValue = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/login.jpg"), fit: BoxFit.cover)),
          ),
          Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: TextField(
                            style: TextStyle(fontSize: 20 ,color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.only(left: 10),
                              hintText: '아이디를 입력해 주세요.',
                              hintStyle: TextStyle(fontSize: 16 ,color: Colors.black45),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(30)
                              )
                            ),
//                      autofocus: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                          child: TextField(
                            style: TextStyle(fontSize: 20 ,color: Colors.black),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.only(left: 10),
                                hintText: '비밀번호를 입력해 주세요.',
                                hintStyle: TextStyle(fontSize: 16 ,color: Colors.black45),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: <Widget>[
                              Theme(
                                data : ThemeData(unselectedWidgetColor: Colors.white), // 체크박스 테두리 색상 변경
                                child: Checkbox(value: _chkValue,
                                  onChanged: _chkValueChanged,
                                ),
                              ),
                              Text('자동 로그인', style: TextStyle(fontSize: 15, color: Colors.white),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  RaisedButton(
                          child: Text('로그인', style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Descriptor1()));
                          },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                        ),

                  Expanded(
                    flex: 3,
                      child: Container())
                ],
              ),
            ),
        ],
      ),
    );
  }
}
