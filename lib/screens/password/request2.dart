import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/style.dart';
import 'confirmPass3.dart';

class Request2 extends StatelessWidget {
  const Request2({super.key});

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
                  'يجب أن تتكون كلمات المرور من 8 أحرف على الأقل . تذكر أنه لا يوصى باعادة استخدام أسماء المستخدمين وكلمات المرور لخدمات ومواقع الويب المختلفة',
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
              'كلمة المرور الجديدة',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          AppConsts.def,
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 350,
            child: Text(
              'كلمة المرور مرة اخرى',
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
                MaterialPageRoute(builder: (context) => ConfirmPass()));
              },
              child: Text(
                'تغيير',
                style: AppConsts.whiteSmallText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
