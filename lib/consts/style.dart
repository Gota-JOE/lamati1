import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConsts {
  //local color
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color blueColor = Colors.blue;

  //main color
  static const Color blueButtom = Color(0xff0B3FA8);
  static const Color whiteButtom = Color(0xffC5D4F5);

  //background color
  static const Color background = Color(0xffF9F9F9);

  //width & height buttom
  static const widthButton = 370.0;
  static const heightButtom = 60.0;

  //text style for white text
  static TextStyle whiteSmallText = GoogleFonts.tajawal(
      //fontFamily: 'Tajawal',
      fontSize: 24,
      color: Colors.white,
      fontWeight: FontWeight.bold);

  //text style for blue text
  static TextStyle blueeSmallText = GoogleFonts.tajawal(
      //fontFamily: 'Tajawal',
      fontSize: 26,
      color: AppConsts.blueButtom, //Color(0xff0B3FA8)
      fontWeight: FontWeight.bold);

  //text style for black text
  static TextStyle blackSmallText = GoogleFonts.tajawal(
      //fontFamily: 'Tajawal',
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.w500);

  //container
  static Container container = Container(
    width: 89,
    height: 60,
    decoration: BoxDecoration(
        color: Color(0xFFE1E6F1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppConsts.blueButtom, width: 3)),
  );

  // i use this
  static Container def = Container(
    width: 374,
    height: 60,
    decoration: ShapeDecoration(
      color: Color(0xFFE1E6F1),
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 3, color: Color(0xFFC5D4F5)),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  // SizedBox
  static SizedBox sizedH = SizedBox(
    height: 12,
  );

  static Container cir = Container(
    width: 30,
    height: 30,
    decoration: ShapeDecoration(
      color: Color(0xFFE1E6F1),
      shape: OvalBorder(
        side: BorderSide(width: 3, color: Color(0xFFC5D4F5)),
      ),
    ),
  );

  static TextStyle smallText = GoogleFonts.tajawal(
      color: AppConsts.blueButtom, fontSize: 11, fontWeight: FontWeight.bold);

  static BoxDecoration get gray50 => BoxDecoration(color: AppConsts.blueButtom);

  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12,
      );

  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: AppConsts.blueButtom,
      );

  static Container AddCar = Container(
    width: 377,
    height: 60,
    decoration: ShapeDecoration(
      //color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 3, color: Color(0xFFC5D4F5)),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    child: Row(
      children: [
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          child: Image.asset('lib/consts/images/bx_bx-down-arrow.png'),
          //onTap: (){Navigator.pop(context);},
        ),
        SizedBox(
          width: 250,
        ),
        Text(
          'مركبة جديدة',
          style: GoogleFonts.tajawal(
              color: AppConsts.blueButtom,
              fontSize: 13,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
  static Container AddCarSmall1 = Container(
    width: 182,
    height: 60,
    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 3, color: Color(0xFFC5D4F5)),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    child: Row(
      children: [
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          child: Image.asset('lib/consts/images/bx_bx-down-arrow.png'),
          //onTap: (){Navigator.pop(context);},
        ),
        SizedBox(
          width: 80,
        ),
        Text(
          'الموديل',
          style: GoogleFonts.tajawal(
              color: AppConsts.blueButtom,
              fontSize: 13,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );

  static Container AddCarSmall2 = Container(
    width: 182,
    height: 60,
    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 3, color: Color(0xFFC5D4F5)),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    child: Row(
      children: [
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          child: Image.asset('lib/consts/images/bx_bx-down-arrow.png'),
          //onTap: (){Navigator.pop(context);},
        ),
        SizedBox(
          width: 80,
        ),
        Text(
          'الماركة',
          style: GoogleFonts.tajawal(
              color: AppConsts.blueButtom,
              fontSize: 13,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );

  static Container miniContainerCar = Container(
    width: 182,
    height: 77,
    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      shadows: [
        BoxShadow(
          color: Color(0x6BC5D4F5),
          blurRadius: 30,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    ),
  );
  static Container line = Container(
    width: 350,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.22,
          strokeAlign: BorderSide.strokeAlignCenter,
          color: Colors.black.withOpacity(0.6000000238418579),
        ),
      ),
    ),
  );
}
