import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

//page name
TextStyle body1Style({double? height,Color? color}){
  return GoogleFonts.notoSans(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: height ?? 16.0,
    color: color ?? onSurface[900],

  );
}

//title
TextStyle body2Style({double? height,Color? color}){
  return GoogleFonts.notoSans(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      height: height ?? 20.0,
      color: color ?? onSurface[800]

  );
}

//subtitle
TextStyle body3Style({double? height,Color? color}){
  return GoogleFonts.notoSans(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      height: height ?? 20.0,
      color: color ?? onSurface[700]

  );
}

TextStyle TextFieldStyle({double? height,Color? color}){
  return GoogleFonts.notoSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: height ?? 16,
      color: color ?? onSurface[700]

  );
}