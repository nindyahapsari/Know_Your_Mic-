import 'package:flutter/material.dart';

import 'package:microphone_app/data/mikrofone.dart';

import 'package:microphone_app/DetailPage.dart';

import 'package:microphone_app/text_style.dart';

class MicrophoneRows extends StatelessWidget {


  final Mikrofone mikro;

  MicrophoneRows(this.mikro);

  @override
  Widget build(BuildContext context) {
    final microThumbnail = Container(
      margin: EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      alignment: FractionalOffset.centerLeft,
      child: Hero(
        tag: "planet-hero-${mikro.id}",
        child: Image(
          image: AssetImage(mikro.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );



    final mikroCardContent = Container(
      margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 4.0,
          ),
          Text(
            mikro.name,
            style: Style.headerTextStyle,
          ),
          Container(
            height: 10.0,
          ),
          Text(
            mikro.type,
            style: Style.subheaderTextStyle,
          ),
          Container(
            height: 6.0,
          ),
          Text(
            mikro.info,
            style: Style.subheaderTextStyle,
          ),
        ],
      ),
    );

    final microCard = Container(
      child: mikroCardContent,
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return GestureDetector(
        onTap: () => Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => DetailPage(mikro),
            )),
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 24.0,
          ),
          child: Stack(
            children: <Widget>[
              microCard,
              microThumbnail,
            ],
          ),
        ));
  }
}
