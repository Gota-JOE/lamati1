import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamati1/screens/login_screen/home.dart';

import '../../consts/style.dart';

class UpdateData extends StatelessWidget {
  const UpdateData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.whiteColor,
      body: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Image.asset('lib/consts/images/Frame.png'),
                  ],
                ),
              ),
              Image.asset('lib/consts/images/miniVector.png'),

            ],
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 350,
            child: Text(
              'الأسم',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          Container(
            width: 377,
            height: 60,
            decoration: ShapeDecoration(
              color: Color(0xFFE1E6F1),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 3, color: Color(0xFFC5D4F5)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 245,
                ),
                Text(
                  'يوسف حافظ',
                  style: GoogleFonts.tajawal(
                      color: AppConsts.blueButtom,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 350,
            child: Text(
              'البريد الألكتروني',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          Container(
            width: 377,
            height: 60,
            decoration: ShapeDecoration(
              color: Color(0xFFE1E6F1),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 3, color: Color(0xFFC5D4F5)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 200,
                ),
                Text(
                  'yousif@gmail.com',
                  style: GoogleFonts.tajawal(
                      color: AppConsts.blueButtom,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          SizedBox(
            width: 350,
            child: Text(
              'رقم الهاتف',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          Container(
            width: 377,
            height: 60,
            decoration: ShapeDecoration(
              color: Color(0xFFE1E6F1),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 3, color: Color(0xFFC5D4F5)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 230,
                ),
                Text(
                  '+20123456789',
                  style: GoogleFonts.tajawal(
                      color: AppConsts.blueButtom,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
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
                'تحديث',
                style: AppConsts.whiteSmallText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
