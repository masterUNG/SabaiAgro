import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyConstant {
  static const Color primaryColor = Color(0xFF039BE5);
  static const Color primaryDarkColor = Color(0xFF006db3);
  static const Color primaryLightColor = Color(0xFF63ccff);
  static const Color secondaryColor = Color(0xFFEE8B60);
  static const Color tertiaryColor = Color(0xFFFFFFFF);

  static String testPdf = 'https://firebasestorage.googleapis.com/v0/b/ungreview-7ba04.appspot.com/o/pdf%2F01.farm%20turbo_k.pdf?alt=media&token=4b045edf-16a8-436a-8aaa-ef163ed29a1b';

  TextStyle h1Style() => GoogleFonts.ibmPlexSansThai(
        textStyle: TextStyle(
          fontSize: 30,
          color: tertiaryColor,
          fontWeight: FontWeight.bold,
        ),
      );

  TextStyle h2Style() => GoogleFonts.ibmPlexSansThai(
        textStyle: TextStyle(
          fontSize: 18,
          color: tertiaryColor,
          fontWeight: FontWeight.w500,
        ),
      );

  TextStyle h2BlueStyle() => GoogleFonts.ibmPlexSansThai(
        textStyle: TextStyle(
          fontSize: 18,
          color: primaryColor,
          fontWeight: FontWeight.w500,
        ),
      );

  TextStyle h3Style() => GoogleFonts.ibmPlexSansThai(
        textStyle: TextStyle(
          fontSize: 14,
          color: tertiaryColor,
          fontWeight: FontWeight.normal,
        ),
      );
}
