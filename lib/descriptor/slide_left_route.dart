import 'package:flutter/material.dart';

class SlideLeftRoute extends PageRouteBuilder {
  final Widget enterWidget;
  final Widget oldWidget;

  SlideLeftRoute({this.enterWidget, this.oldWidget})
    : super(
    transitionDuration: Duration(milliseconds: 400),
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secodaryAnimation){
      return enterWidget;
    },
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child){
      return Stack(
        children: <Widget>[
          SlideTransition(
            position: new Tween<Offset>(
              begin: const Offset(0.0, 0.0),
              end: const Offset(-1.0, 0.0),
            ).animate(animation),
            child: oldWidget,
          ),
          SlideTransition(position: new Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
            child: enterWidget,
          )
        ],
      );
    }
    );
}


