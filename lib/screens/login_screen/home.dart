import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/style.dart';
import '../add_car_screens/add_car_1.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: AppConsts.gray50,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'lib/consts/images/Rectangle.png',
              width: double.infinity,
              height: double.infinity,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //SizedBox(height: 24), //16
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 42),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 36,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 3),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: Colors.grey[50],
                                  borderRadius: AppConsts.roundedBorder12,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.search),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 5,
                                        bottom: 7,
                                      ),
                                      child: Text(
                                        "ابحث عن موقعك",
                                        style:
                                            GoogleFonts.tajawal(fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 576),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppConsts.blueButtom,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              _showMyDialog(context);
                                            },
                                            child: Text(
                                              "اضف مركبة",
                                              style: GoogleFonts.tajawal(
                                                  fontSize: 20,
                                                  color: AppConsts.whiteColor),
                                            ),
                                          ),
                                          Image.asset(
                                              'lib/consts/images/mdi_car-2-plus.png'),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppConsts.blueButtom,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "احجز الان",
                                              style: GoogleFonts.tajawal(
                                                  fontSize: 20,
                                                  color: AppConsts.whiteColor),
                                            ),
                                          ),
                                          Image.asset(
                                              'lib/consts/images/bi_plus-lg.png'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: AppConsts.blueButtom,
              ),
              label: 'الحساب',),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.date_range,
                color: AppConsts.blueButtom,
              ),
              label: 'الحجز'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.car_crash,
                color: AppConsts.blueButtom,
              ),
              label: 'المركبات'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppConsts.blueButtom,
              ),
              label: 'الرئيسية')
        ],
      ),*/
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Container(
            child: Image.asset('lib/consts/images/carbon_close-filled.png'),
            height: 35,
            width: 35,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 8),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                SizedBox(height: 16),
                Container(
                  child: Image.asset('lib/consts/images/plus 1.png'),
                  height: 137,
                  width: 137,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddCarOne()));
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
