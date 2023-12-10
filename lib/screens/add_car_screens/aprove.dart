import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/style.dart';
import '../profile/profile.dart';

class Aprove extends StatelessWidget {
  const Aprove({super.key});

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
                      height: 90,
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
                          width: 200,
                        ),
                        Text(
                          'التفاصيل',
                          style: GoogleFonts.tajawal(
                              color: AppConsts.blueButtom,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.timer_outlined,
                                  size: 17,
                                ),
                                Text(
                                  '  09:00 am  ',
                                  style: GoogleFonts.tajawal(
                                      fontSize: 13, color: Colors.red),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.date_range,
                                  size: 17,
                                ),
                                Text(
                                  '  20-8-2023  ',
                                  style: GoogleFonts.tajawal(
                                      fontSize: 13, color: Colors.red),
                                ),
                              ],
                            ),
                            Text(
                              'نوع المركبة :   فيراري',
                              style: GoogleFonts.tajawal(fontSize: 13),
                            ),
                            Text(
                              '2021 auto : موديل المركبة    ',
                              style: GoogleFonts.tajawal(fontSize: 13),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 16.61,
                                  height: 16.61,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF0B3FA8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(13.29),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  ': لون المركبة',
                                  style: GoogleFonts.tajawal(fontSize: 13),
                                )
                              ],
                            ),
                          ],
                        ),
                        Image.asset('lib/consts/images/Rectangle 24.png'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 340,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2.22,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'المبلغ',
                              style: GoogleFonts.tajawal(
                                  color: AppConsts.blueButtom,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'الخدمات',
                              style: GoogleFonts.tajawal(
                                  color: AppConsts.blueButtom,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '50 ريال',
                              style: GoogleFonts.tajawal(
                                  color: AppConsts.blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'غسيل عادي',
                              style: GoogleFonts.tajawal(
                                  color: AppConsts.blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '10 ريال',
                              style: GoogleFonts.tajawal(
                                  color: AppConsts.blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'عطر فواح',
                              style: GoogleFonts.tajawal(
                                  color: AppConsts.blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'ريال 5',
                              style: GoogleFonts.tajawal(
                                  color: AppConsts.blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'ضريبة القيمة المضافة',
                              style: GoogleFonts.tajawal(
                                  color: AppConsts.blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'ريال 65',
                              style: GoogleFonts.tajawal(
                                  color: AppConsts.blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'المبلغ الاجمالي',
                              style: GoogleFonts.tajawal(
                                  color: AppConsts.blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 170,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 180,
                              height: 60,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 3, color: Color(0xFF0B3FA8)),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  AlertDialog(
                                    //title: ,
                                  );
                                },
                                child: Text(
                                  'رجوع',
                                  style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: AppConsts.blueButtom),
                                ),
                              ),
                            ),
                            Container(
                              width: 180,
                              height: 60,
                              decoration: ShapeDecoration(
                                color: Color(0xFF0B3FA8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  _showMyDialog(context);
                                },
                                child: Text(
                                  'تأكيد',
                                  style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: AppConsts.whiteColor),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
              title: Container(
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/consts/images/bi_emoji-smile.png'),
                      SizedBox(
                        height: 10,
                      ), Text(
                        'شكرا لك',
                        style: GoogleFonts.tajawal(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppConsts.blueButtom),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'تم تأكيد الحجز',
                        style: GoogleFonts.tajawal(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            color: AppConsts.blueButtom),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 180,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: Color(0xFF0B3FA8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                          },
                          child:Text('تأكيد',
                          style: GoogleFonts.tajawal(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: AppConsts.whiteColor),
                          //textAlign: TextAlign.center,
                        ),
                      ),)
                    ]),
              ),
          );
        });
  }
}
