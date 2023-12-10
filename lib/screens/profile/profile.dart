import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamati1/screens/profile/help.dart';
import 'package:lamati1/screens/profile/setting.dart';
import 'package:lamati1/screens/profile/wallet.dart';

import '../../consts/style.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConsts.whiteColor,
        body: Column(children: [
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
                          width: 150,
                        ),
                        Text(
                          'الملف الشخصي',
                          style: GoogleFonts.tajawal(
                              color: AppConsts.blueButtom,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 350,
                      height: 92,
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
                      child: Row(
                        children: [
                          SizedBox(
                            width: 150,
                          ),
                          Column(children: [
                            Row(
                              children: [
                                Text(
                                  'محمد عبدالكريم',
                                  style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Icon(
                                  Icons.person,
                                  size: 60,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '0.0',
                                  style: GoogleFonts.tajawal(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 25,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                          ]),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 220,
                            ),
                            Text(
                              'محفظتي',
                              style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.blueGrey),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Wallet()));
                                },
                                icon: Icon(Icons.wallet,
                                    size: 30, color: Colors.blueGrey)),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppConsts.line,
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 220,
                            ),
                            Text(
                              'الاعدادات',
                              style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.blueGrey),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Setting()));
                                },
                                icon: Icon(Icons.settings,
                                    size: 30, color: Colors.blueGrey)),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppConsts.line,
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 220,
                            ),
                            Text(
                              'المساعدة',
                              style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.blueGrey),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Help()));
                                },
                                icon: Icon(Icons.help_outline,
                                    size: 30, color: Colors.blueGrey)),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppConsts.line,
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 250,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'خروج',
                                style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Colors.blueGrey),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.exit_to_app,
                                    size: 30, color: Colors.blueGrey)),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ]));
  }
}
