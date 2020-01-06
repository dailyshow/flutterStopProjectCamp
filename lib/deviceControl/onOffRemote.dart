import 'package:flutter/material.dart';

class OnOffRemote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Card(
          elevation: 4,
          child: Text(
            '전원',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              elevation: 4,
              shape: CircleBorder(),
              color: Colors.white,
              child: Text('On', style: TextStyle(fontSize: 40, color: Colors.black),),
            ),
            RaisedButton(
              onPressed: () {},
              elevation: 4,
              shape: CircleBorder(),
              color: Colors.white,
              child: Text('Off', style: TextStyle(fontSize: 40, color: Colors.black),),
            )
          ],
        )
      ],
    );
  }
}
