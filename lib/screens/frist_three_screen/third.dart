import 'package:flutter/material.dart';
import 'package:lamati1/screens/frist_three_screen/second.dart';

import '../../consts/style.dart';
import '../login_screen/login_screen.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConsts.blueButtom,
        body: Column(children: [
          Stack(children: [
            Image.asset('lib/consts/images/Vector.png'),
            Image.asset(
                'lib/consts/images/2_generated-removebg-preview(2) 1.png'),
            SizedBox(
              height: 20,
            ),
          ]),
          Text(
            'توفر المعدات الدقيقة نتائج مثالية',
            style: AppConsts.whiteSmallText,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: AppConsts.whiteColor,
                borderRadius: BorderRadius.circular(10)),
            height: 50,
            width: 350,
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  'ابدأ الان',
                  style: AppConsts.blueeSmallText,
                )),
          ),
          SizedBox(
            height: 10,
          ),
        ]));
  }
}
/*TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Second()));
                },
                child: Text('Go back'),
              ),*/
