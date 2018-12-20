
import 'package:flutter/material.dart';

import 'package:microphone_app/data/mikrofone.dart';

import 'package:microphone_app/DetailPage.dart';





class MikroSumme extends StatelessWidget {

  final Mikrofone mikro;
  final bool horizontal;

  MikroSumme(this.mikro, {this.horizontal = true});

  MikroSumme.vertical(this.mikro) : horizontal = false;





  @override
  Widget build(BuildContext context) {
    final microThumbnail = Container(
      margin: EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      alignment: horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: Hero(
        tag: "planet-hero-${mikro.id}",
        child: Image(
          image: AssetImage(mikro.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );



    final baseTextStyle = const TextStyle(fontFamily: "Quicksand");

    final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    );

    final regularTextStyle = baseTextStyle.copyWith(
      color: Color(0xffb6b2df),
      fontSize: 9.0,
      fontWeight: FontWeight.w400,
    );

    final subheaderTextStyle = regularTextStyle.copyWith(
      fontSize: 12.0,
    );




    final mikroCardContent = Container(
      margin: new EdgeInsets.fromLTRB(horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 4.0,
          ),
          Text(
            mikro.name,
            style: headerTextStyle,
          ),
          Container(
            height: 10.0,
          ),
          Text(
            mikro.type,
            style: subheaderTextStyle,
          ),
          Container(
            height: 6.0,
          ),
          Text(
            mikro.info,
            style: subheaderTextStyle,
          ),
        ],
      ),
    );

    final microCard = Container(
      child: mikroCardContent,
        height: horizontal ? 124.0 : 154.0,
        margin: horizontal ? new EdgeInsets.only(left: 46.0) : new EdgeInsets.only(top: 72.0),
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
        onTap: horizontal
            ? () => Navigator.of(context).push(
          new PageRouteBuilder(
            pageBuilder: (_, __, ___) => new DetailPage(mikro),
            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            new FadeTransition(opacity: animation, child: child),
          ) ,
        )
            : null,
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
