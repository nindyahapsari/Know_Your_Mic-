import 'package:flutter/material.dart';

import 'package:microphone_app/data/mikrofone.dart';

import 'package:microphone_app/MicrophoneRows.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xFF736AB7),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              sliver: SliverFixedExtentList(
                itemExtent: 152.0,
                delegate: SliverChildBuilderDelegate(
                  (context, index) => MicrophoneRows(mikro[index]),
                  childCount: mikro.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
