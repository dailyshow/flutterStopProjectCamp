import 'package:flutter/material.dart';

class TvRemote extends StatefulWidget {
  @override
  _TvRemoteState createState() => _TvRemoteState();
}

class _TvRemoteState extends State<TvRemote> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Card(
          elevation: 4,
          child: Text('전원', style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(onPressed: (){},
              elevation: 4,
              shape: CircleBorder(),
              color: Colors.white,
              child: Text('On', style: TextStyle(fontSize: 40, color: Colors.black),),
            ),
            RaisedButton(onPressed: (){},
              elevation: 4,
              shape: CircleBorder(),
              color: Colors.white,
              child: Text('Off', style: TextStyle(fontSize: 40, color: Colors.black),),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Card(
                elevation: 4,
                child: Text('채널', style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Card(
                elevation: 4,
                child: Text('볼륨', style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
                ),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
                onTap: (){

                },
                child: Icon(Icons.arrow_drop_up, size: 80,)
            ),
            GestureDetector(
                onTap: (){

                },
                child: Icon(Icons.arrow_drop_up, size: 80,)
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('11', style: TextStyle(fontSize: 30),),
            Text('20', style: TextStyle(fontSize: 30),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
                onTap: (){

                },
                child: Icon(Icons.arrow_drop_down, size: 80,)
            ),
            GestureDetector(
                onTap: (){

                },
                child: Icon(Icons.arrow_drop_down, size: 80,)
            )
          ],
        ),
      ],
    );
  }
}

