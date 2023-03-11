
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyle(double size,[Color ?clr,FontWeight ?fw]){
  return GoogleFonts.nunito(
    fontSize: size,
    color:clr,
    fontWeight:fw ,
  );
}




const Color backgroundClr=Color(0xff191A22);
const Color textClrLight = Color(0xffE4E4E6);
const Color textClrDark = Color(0xff8A8A8E);
const Color cardClr = Color(0xff292B3E);
const Color buttonClr = Color(0xff246BFD);