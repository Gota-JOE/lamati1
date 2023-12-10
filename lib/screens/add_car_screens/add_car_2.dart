import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamati1/screens/profile/profile.dart';

import '../../componet/CustomServicesCard.dart';
import '../../consts/style.dart';
import '../../data.dart';
import 'add_car_1.dart';
import 'add_car_3.dart';

class AddCarTwo extends StatefulWidget {
  const AddCarTwo({
    super.key,
  });

  @override
  State<AddCarTwo> createState() => _AddCarTwoState();
}

class _AddCarTwoState extends State<AddCarTwo> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddCarOne()));
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: AppConsts.whiteColor,
      body: Column(children: [
        Stack(children: [
          Image.asset('lib/consts/images/miniVector.png'),
          Align(
            alignment: Alignment.center,
            child: Row(
              children: [
                SizedBox(
                  height: 220,
                  width: 280,
                ),
                Text(
                  'مركباتي',
                  style: GoogleFonts.tajawal(
                      color: AppConsts.blueButtom,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ]),
        ListView.builder(
          itemCount: 4,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return CustomServicesCard();
          },
        )
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
            icon: InkWell(
              onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));},
              child: Icon(
                Icons.account_circle,
                color: AppConsts.blueButtom,
              ),
            ),
            label: 'الحساب',
          ),
          BottomNavigationBarItem(
              icon: InkWell(
                 onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCarThree()));},
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
