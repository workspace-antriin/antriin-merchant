import 'dart:ui' show Color;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

Color kPrimaryColor = HexColor("#3b59a7");
Color kOrangeColor = Color(0xffEFDB24);
Color kBlackColor = Color(0xff1F1449);
Color kWhiteColor = Color(0xffFFFFFF);
Color kGreyColor = Color(0xff9698A9);
Color kBackgroundColor = Color(0xffEBEBEB);
Color kRedColor = HexColor("#d91d11");
Color kGreenColor = HexColor("#2bae38");
Color kYellowColor = HexColor("#efdb24");
Color kBlue = HexColor("0000FF");

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);
TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);
TextStyle orangeTextStyle = GoogleFonts.poppins(
  color: kOrangeColor,
);
TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kGreenColor,
);
TextStyle blueTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

class ArgonColors {
  static const Color black = Color(0xFF000000);

  static const Color white = Color(0xFFFFFFFF);

  static const Color initial = Color.fromRGBO(23, 43, 77, 1.0);

  static const Color primary = Color.fromRGBO(94, 114, 228, 1.0);

  static const Color secondary = Color.fromRGBO(247, 250, 252, 1.0);

  static const Color label = Color.fromRGBO(254, 36, 114, 1.0);

  static const Color info = Color.fromRGBO(17, 205, 239, 1.0);

  static const Color error = Color.fromRGBO(245, 54, 92, 1.0);

  static const Color success = Color.fromRGBO(45, 206, 137, 1.0);

  static const Color warning = Color.fromRGBO(251, 99, 64, 1.0);

  static const Color header = Color.fromRGBO(82, 95, 127, 1.0);

  static const Color bgColorScreen = Color.fromRGBO(248, 249, 254, 1.0);

  static const Color border = Color.fromRGBO(202, 209, 215, 1.0);

  static const Color inputSuccess = Color.fromRGBO(123, 222, 177, 1.0);

  static const Color inputError = Color.fromRGBO(252, 179, 164, 1.0);

  static const Color muted = Color.fromRGBO(136, 152, 170, 1.0);

  static const Color text = Color.fromRGBO(50, 50, 93, 1.0);
}
