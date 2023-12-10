import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/style.dart';
import '../../data.dart';
import 'add_car_4.dart';

class AddCarThree extends StatefulWidget {
  const AddCarThree({super.key});

  @override
  State<AddCarThree> createState() => _AddCarThreeState();
}

class _AddCarThreeState extends State<AddCarThree> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
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
                      onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCarFour())); },
                      child: Text('السابقة',
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: AppConsts.blueButtom),
                    ),),
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
                            color: Color(0xFFC4C4C4),
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
                            color: Color(0xFF0B3FA8),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Image.asset('lib/consts/images/forbidden 1.png'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'عفوا لا يوجد حجوزات حالية',
                  style: GoogleFonts.tajawal(
                      fontWeight: FontWeight.bold, fontSize: 20),
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
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>tabs[_selectedIndex]));},
                child: Icon(
                  Icons.date_range,
                  color: AppConsts.blueButtom,
                ),
              ),
              label: 'الحجز'),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => tabs[_selectedIndex]));*/
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
}
