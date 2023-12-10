import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamati1/screens/password/request2.dart';

import '../../consts/style.dart';
import '../login_screen/home.dart';

class Requestforgetpass extends StatelessWidget {
  const Requestforgetpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.whiteColor,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('lib/consts/images/miniVector.png'),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      'نسيت كلمة المرور ؟',
                      style: GoogleFonts.tajawal(
                          color: AppConsts.blueButtom,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              SizedBox(
                width: 350,
                child: Text(
                  'ادخل عنوان بريدك الالكتروني ادناه وسنرسل لك رابطا',
                  style: GoogleFonts.tajawal(
                    fontSize: 13,
                    color: AppConsts.blackColor,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 350,
                child: Text(
                  'لاعادة تعيين كلمة مرورك ',
                  style: GoogleFonts.tajawal(
                    fontSize: 13,
                    color: AppConsts.blackColor,
                  ),
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 350,
            child: Text(
              'البريد الالكتروني',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          AppConsts.def,
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
                color: AppConsts.blueButtom,
                borderRadius: BorderRadius.circular(10)),
            height: 50,
            width: 350,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Request2()));
              },
              child: Text(
                'دخول',
                style: AppConsts.whiteSmallText,
              ),
            ),
          ),
          SizedBox(
            height: 220,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Text(
                  'تسجيل الدخول',
                  style: GoogleFonts.tajawal(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppConsts.blueButtom,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
