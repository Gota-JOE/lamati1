import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/style.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.whiteColor,
      body: Column(children: [
        Stack(children: [
          Image.asset('lib/consts/images/miniVector.png'),
          Align(
            alignment: Alignment.center,
            child: Column(children: [
              SizedBox(
                height: 90,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    child: Image.asset('lib/consts/images/bi_arrow-right.png'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: 210,
                  ),
                  Text(
                    'الاشعارات',
                    style: GoogleFonts.tajawal(
                        color: AppConsts.blueButtom,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 300,
                  ),
                  Text(
                    'اشعار  1',
                    style: GoogleFonts.tajawal(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
              AppConsts.sizedH,
              Text(
                'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر"',
                style: GoogleFonts.tajawal(fontSize: 13),
              ),
              AppConsts.sizedH,
              AppConsts.line,
              AppConsts.sizedH,
              Row(
                children: [
                  SizedBox(
                    width: 300,
                  ),
                  Text(
                    'اشعار  1',
                    style: GoogleFonts.tajawal(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
              AppConsts.sizedH,
              Text(
                'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر"',
                style: GoogleFonts.tajawal(fontSize: 13),
              ),
              AppConsts.sizedH,
              AppConsts.line,
              AppConsts.sizedH,
              Row(
                children: [
                  SizedBox(
                    width: 300,
                  ),
                  Text(
                    'اشعار  1',
                    style: GoogleFonts.tajawal(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
              AppConsts.sizedH,
              Text(
                'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر"',
                style: GoogleFonts.tajawal(fontSize: 13),
              ),
              AppConsts.sizedH,
              AppConsts.line,
              AppConsts.sizedH,
              Row(
                children: [
                  SizedBox(
                    width: 300,
                  ),
                  Text(
                    'اشعار  1',
                    style: GoogleFonts.tajawal(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
              AppConsts.sizedH,
              Text(
                'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر"',
                style: GoogleFonts.tajawal(fontSize: 13),
              ),
              AppConsts.sizedH,
              AppConsts.line,
              AppConsts.sizedH,
              Row(
                children: [
                  SizedBox(
                    width: 300,
                  ),
                  Text(
                    'اشعار  1',
                    style: GoogleFonts.tajawal(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
              AppConsts.sizedH,
              Text(
                'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر"',
                style: GoogleFonts.tajawal(fontSize: 13),
              ),
              AppConsts.sizedH,
              AppConsts.line,
              AppConsts.sizedH,
              Row(
                children: [
                  SizedBox(
                    width: 300,
                  ),
                  AppConsts.sizedH,
                  Text(
                    'اشعار  1',
                    style: GoogleFonts.tajawal(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
              AppConsts.sizedH,
              Text(
                'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر"',
                style: GoogleFonts.tajawal(fontSize: 13),
              ),
            ]),
          ),
        ]),
      ]),
    );
  }
}
