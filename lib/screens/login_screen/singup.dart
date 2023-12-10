import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/style.dart';
import 'confirm.dart';
import 'login_screen.dart';

class Singup extends StatelessWidget {
  const Singup({Key? key}) : super(key: key);

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
                      'تسجيل جديد',
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
            width: 350,
            child: Text(
              'الاسم',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          AppConsts.def,
          AppConsts.sizedH,
          SizedBox(
            width: 350,
            child: Text(
              'البريد الالكتروني',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          AppConsts.def,
          AppConsts.sizedH,
          SizedBox(
            width: 350,
            child: Text(
              'رقم الهاتف',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          AppConsts.def,
          AppConsts.sizedH,
          Row(
            children: [
              SizedBox(
                width: 100,
              ),
              Text(
                'انثى',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blueButtom,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              AppConsts.cir,
              SizedBox(
                width: 150,
              ),
              Text(
                'ذكر',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blueButtom,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              AppConsts.cir,
            ],
          ),
          AppConsts.sizedH,
          SizedBox(
            width: 350,
            child: Text(
              'كلمة المرور',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          AppConsts.def,
          AppConsts.sizedH,
          AppConsts.sizedH,
          SizedBox(
            width: 350,
            child: Text(
              'تأكيد كلمة المرور',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          AppConsts.def,
          AppConsts.sizedH,
          Row(
            children: [
              SizedBox(
                width: 140,
              ),
              Text(
                'موافق على الشروط والاحكام',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              AppConsts.cir,
            ],
          ),
          AppConsts.sizedH,
          Container(
            decoration: BoxDecoration(
                color: AppConsts.blueButtom,
                borderRadius: BorderRadius.circular(10)),
            height: 50,
            width: 350,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Confirm()));
              },
              child: Text(
                'دخول',
                style: AppConsts.whiteSmallText,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    'تسجيل دخول',
                    style: GoogleFonts.tajawal(
                        color: AppConsts.blueButtom,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'لديك حساب ؟ ',
                  style: GoogleFonts.tajawal(
                      color: AppConsts.blackColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
