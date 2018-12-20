import 'package:flutter/material.dart';

import 'package:microphone_app/HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        GradientAppBar("Mikros"),
        HomePageBody(),
      ],
    ));
  }
}

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 80.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontFamily: '',
              fontWeight: FontWeight.w600,
              fontSize: 36.0),
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              const Color(0xFF01579B),
              const Color(0xFF4FC3F7),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    );
  }
}
