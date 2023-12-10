import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamati1/screens/frist_three_screen/first.dart';
import 'package:lamati1/screens/frist_three_screen/second.dart';
import 'package:lamati1/screens/frist_three_screen/third.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../consts/style.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (int page) {
                setState(() {
                  currentPage = page;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                switch (index) {
                  case 0:
                    return First();
                  case 1:
                    return Second();
                  case 2:
                    return Third();
                }
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            //margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(25),
            color: AppConsts.blueButtom,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('hi',style: TextStyle(fontSize: 20,color: AppConsts.blueButtom),),
                 SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    //effect: WormEffect(),
                    effect: ScrollingDotsEffect(
                     spacing: 10,
                     activeDotColor: AppConsts.whiteColor,
                     dotColor: AppConsts.whiteColor,
                     activeDotScale: 1.6,
                     dotHeight: 5,
                     dotWidth: 20,
                   ),
                  ),
                TextButton(
                  onPressed: () {
                    controller.animateToPage(
                      currentPage + 1,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text('التالي',style: GoogleFonts.tajawal(fontSize:17,color: AppConsts.whiteColor),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}