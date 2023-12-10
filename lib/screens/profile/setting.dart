import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamati1/screens/profile/notifications.dart';
import 'package:lamati1/screens/profile/terms.dart';
import 'package:lamati1/screens/profile/wallet.dart';

import '../../consts/style.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

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
                          width: 220,
                        ),
                        Text(
                          'الاعدادات',
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
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 200,
                            ),
                            Text(
                              'الاشعارات',
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
                                          builder: (context) => Notifications()));
                                },
                                icon: Icon(Icons.notifications,
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
                              width: 140,
                            ),
                            Text(
                              'الخصوصية والامان',
                              style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.blueGrey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.policy,
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
                              width: 160,
                            ),
                            Text(
                              'الشروط والأحكام',
                              style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.blueGrey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Terms()));
                                },
                                icon: Icon(Icons.note_alt_outlined,
                                    size: 30, color: Colors.blueGrey)),
                          ],
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
