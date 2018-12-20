import 'package:flutter/material.dart';
import 'package:microphone_app/data/mikrofone.dart';
import 'package:microphone_app/MikroSumme.dart';
import 'package:microphone_app/text_style.dart';









class DetailPage extends StatelessWidget {


  final Mikrofone mikro;

  DetailPage(this.mikro);

  //Be careful with curly brackets from the class, spending hours figuring out went wrong, it was the curly brackets




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xFF736AB7),
        child: Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }


  Container _getBackground() {
    return Container(
      child: Image.network(mikro.pictures,
        fit: BoxFit.cover,
        height: 300.0,
      ),
      constraints: new BoxConstraints.expand(height: 295.0),
    );
  }

  Container _getGradient() {
    return new Container(
      margin: new EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: <Color>[new Color(0x00736AB7), new Color(0xFF736AB7)],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }



  Widget _getContent() {
    final _overviewTitle = "overview".toUpperCase();
    return ListView(
      padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: <Widget>[
        MikroSumme(mikro, horizontal: false,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_overviewTitle, style: Style.headerTextStyle,),
              Text(mikro.description, style: Style.descriptionTextStyle,),
            ],
          ),
        ),
      ],
    );
  }



  Container _getToolbar(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(
          top: MediaQuery
              .of(context)
              .padding
              .top),
      child: new BackButton(color: Colors.white),
    );
  }

}