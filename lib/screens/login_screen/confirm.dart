import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamati1/screens/login_screen/home.dart';

import '../../consts/style.dart';
import '../password/requestforgetpass.dart';

class Confirm extends StatelessWidget {
  const Confirm({super.key});

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
                      'رمز التأكيد',
                      style: GoogleFonts.tajawal(
                          color: AppConsts.blueButtom,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    SizedBox(
                      width: 350,
                      child: Text(
                        'الرجاء ادخال رمز التأكيد',
                        textAlign: TextAlign.right,
                        style: AppConsts.smallText,
                      ),
                    ),
                    AppConsts.sizedH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppConsts.container,
                        AppConsts.container,
                        AppConsts.container,
                        AppConsts.container
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
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
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                'تأكيد',
                style: AppConsts.whiteSmallText,
              ),
            ),
          ),
          SizedBox(height: 30,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Requestforgetpass()));
                  },
                  child: Text(
                    'ارسال جديد',
                    style: GoogleFonts.tajawal(
                        color: AppConsts.blueButtom,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'لم يتم ارسال الرمز ؟',
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
