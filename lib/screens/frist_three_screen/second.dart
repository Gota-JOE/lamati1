import 'package:flutter/material.dart';
import 'package:lamati1/screens/frist_three_screen/third.dart';

import '../../consts/style.dart';
import '../login_screen/login_screen.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.blueButtom,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('lib/consts/images/Vector.png'),
              Image.asset('lib/consts/images/logo3.png'),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Text(
            'نحن نهتم بمركبتك بقدر اهتمامك',
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
            height: 150,
          ),
          /*Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Third()));
                  },
                  child: Text('التالي')),
            ],
          ),*/
        ],
      ),
    );
  }
}
