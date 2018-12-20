import 'package:flutter/material.dart';



class Style {


  static final baseTextStyle = const TextStyle(fontFamily: "Quicksand");



  static final headerTextStyle = baseTextStyle.copyWith(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );



  static final regularTextStyle = baseTextStyle.copyWith(
    color: Color(0xffb6b2df),
    fontSize: 9.0,
    fontWeight: FontWeight.w400,
  );

  static final descriptionTextStyle = baseTextStyle.copyWith(
    color: Color(0xffb6b2df),
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
  );



  static final subheaderTextStyle = regularTextStyle.copyWith(
    fontSize: 12.0,
  );




}