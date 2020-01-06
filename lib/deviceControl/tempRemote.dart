import 'package:flutter/material.dart';

class TempRemote extends StatefulWidget {
  @override
  _TempRemoteState createState() => _TempRemoteState();
}

class _TempRemoteState extends State<TempRemote> {
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
        Card(
          elevation: 4,
          child: Text('온도 조절', style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
                  onTap: (){

                  },
                  child: Icon(Icons.arrow_drop_down, size: 140,)
                ),
                /*RaisedButton(onPressed: (){},
                  elevation: 4,
                  shape: CircleBorder(),
                  color: Colors.white,
                  child: Text('On', style: TextStyle(fontSize: 40, color: Colors.black),),
                )*/
            GestureDetector(
                    onTap: (){

                    },
                    child: Icon(Icons.arrow_drop_up, size: 140,)
                )
                /*RaisedButton(onPressed: (){},
                  elevation: 4,
                  shape: CircleBorder(),
                  color: Colors.white,
                  child: Text('Off', style: TextStyle(fontSize: 40, color: Colors.black),),
                )*/
          ],
        )
      ],
    );
  }
}

