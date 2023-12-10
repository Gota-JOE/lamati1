import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamati1/screens/add_car_screens/servies.dart';

import '../../consts/style.dart';
import '../../data.dart';

class AddCarFour extends StatefulWidget {
  const AddCarFour({super.key});

  @override
  State<AddCarFour> createState() => _AddCarFourState();
}

class _AddCarFourState extends State<AddCarFour> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 1;

    return Scaffold(
      backgroundColor: AppConsts.whiteColor,
      body: Column(children: [
        Stack(children: [
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
                    SizedBox(
                      width: 250,
                    ),
                    Text(
                      'الحجوزات',
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
                      width: 90,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'السابقة',
                        style: GoogleFonts.tajawal(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: AppConsts.blueButtom),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'الحالية',
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: AppConsts.blueButtom),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 170,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 3,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF0B3FA8),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 3,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFC4C4C4), //0xFFC4C4C4
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 182,
                      height: 77,
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
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.timer_outlined),
                              Text('09:00 am'),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.date_range),
                              Text('20-8-2023'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: ShapeDecoration(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  _showMyDialog(context);
                                },
                                child: Text('فيراري',
                                    style: GoogleFonts.tajawal(fontSize: 13)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 182,
                      height: 77,
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
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.timer_outlined),
                              Text('09:00 am'),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.date_range),
                              Text('20-8-2023'),
                            ],
                          ),
                          AppConsts.sizedH,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: ShapeDecoration(
                                  color: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              Text(
                                'فلكسواجن',
                                style: GoogleFonts.tajawal(fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ])
      ]),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: AppConsts.blueButtom,
            ),
            label: 'الحساب',
          ),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => tabs[_selectedIndex]));
                },
                child: Icon(
                  Icons.date_range,
                  color: AppConsts.blueButtom,
                ),
              ),
              label: 'الحجز'),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Services()));
                },
                child: Icon(
                  Icons.car_crash,
                  color: AppConsts.blueButtom,
                ),
              ),
              label: 'المركبات'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppConsts.blueButtom,
              ),
              label: 'الرئيسية')
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
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                        'lib/consts/images/carbon_close-filled (1).png')),
                SizedBox(width: 155),
                Text('التفاصيل',
                    style: GoogleFonts.tajawal(
                        fontSize: 17,
                        color: AppConsts.blueButtom,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            //height: 55,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 8),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                SizedBox(height: 16),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 336,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              width: 2,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color:
                                  Colors.black.withOpacity(0.6000000238418579),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timer_outlined,
                                size: 16,
                              ),
                              Text(
                                '09:00 am',
                                style: GoogleFonts.tajawal(fontSize: 13),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.date_range,
                                size: 16,
                              ),
                              Text(
                                '20-8-2023',
                                style: GoogleFonts.tajawal(fontSize: 13),
                              ),
                              Image.asset('lib/consts/images/Rectangle 24.png'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 170,
                  width: 170,
                ),
                SizedBox(height: 20),
                Text(
                  'الرجاء اضافة مركبة واحدة على الاقل لمواصلة عملية الحجز',
                  style: GoogleFonts.tajawal(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.bottomLeft,
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppConsts.blueButtom,
                ),
                child: TextButton(
                  child: Text(
                    'اضافة الان....',
                    style: GoogleFonts.tajawal(
                        fontSize: 20, color: AppConsts.whiteColor),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    //Navigator.push(context,
                    //MaterialPageRoute(builder: (context) => AddCarOne()));
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
