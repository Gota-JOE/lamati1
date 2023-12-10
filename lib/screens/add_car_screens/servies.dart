import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/style.dart';
import 'aprove.dart';

class Services extends StatelessWidget {
  const Services({super.key});

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
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          child: Image.asset(
                              'lib/consts/images/bi_arrow-right.png'),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          'خدمات اسيارة',
                          style: GoogleFonts.tajawal(
                              color: AppConsts.blueButtom,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 130,
              ),
              Text(
                'الساعة',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blueButtom,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 150,
              ),
              Text(
                'التاريخ',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blueButtom,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
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
                      width: 130,
                    ),
                    GestureDetector(
                      child: Icon(Icons.timer_outlined),
                      //onTap: (){Navigator.pop(context);},
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
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
                      width: 130,
                    ),
                    GestureDetector(
                      child: Icon(Icons.date_range_outlined),
                      //onTap: (){Navigator.pop(context);},
                    ),
                  ],
                ),
              )
            ],
          ),
          AppConsts.sizedH,
          Row(
            children: [
              SizedBox(
                width: 245,
              ),
              Text(
                'خدمات رئيسية',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          AppConsts.sizedH,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: ShapeDecoration(
                  shape: OvalBorder(
                    side: BorderSide(width: 3, color: Color(0xFF0B3FA8)),
                  ),
                ),
              ),
              Text(
                '50 ر س',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blueButtom,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Text(
                'غسيل عام',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blueButtom,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row(
            children: [
              SizedBox(
                width: 255,
              ),
              Text(
                'خدمات اضافية',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          AppConsts.sizedH,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: ShapeDecoration(
                  shape: OvalBorder(
                    side: BorderSide(width: 3, color: Color(0xFF0B3FA8)),
                  ),
                ),
              ),
              Text(
                '10 ر س',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blueButtom,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Text(
                'فواحه عطرية',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blueButtom,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '90 ر س',
                style: GoogleFonts.tajawal(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'المبلغ الاجمالي',
                style: GoogleFonts.tajawal(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 30,),
          Row(children: [
            SizedBox(width: 230,),
            Text('اضافة ملاحظات',style: GoogleFonts.tajawal(
                color: Colors.red,
                fontSize: 15,
                fontWeight: FontWeight.bold),)
          ],),
          AppConsts.sizedH,
          Container(
            width: 371,
            height: 106,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 3, color: Color(0xFFC5D4F5)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
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
                    MaterialPageRoute(builder: (context) => Aprove()));
              },
              child: Text(
                'استمرار',
                style: AppConsts.whiteSmallText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
