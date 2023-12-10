import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/style.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.whiteColor,
      body: Column(children: [
        Stack(children: [
          Image.asset('lib/consts/images/miniVector.png'),
          Align(
            alignment: Alignment.center,
            child: Column(children: [
              SizedBox(
                height: 90,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    child: Image.asset('lib/consts/images/bi_arrow-right.png'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  Text(
                    'المحفظة',
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
              Image.asset('lib/consts/images/bx_bx-wallet-alt.png'),
              AppConsts.sizedH,
              Text(
                'الرصيد المتاح',
                style: GoogleFonts.tajawal(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.blueGrey),
              ),
              AppConsts.sizedH,
              Text('ر س 50',style: GoogleFonts.tajawal(fontSize: 25,fontWeight: FontWeight.bold,color: AppConsts.blueButtom),)
            ]),
          ),
        ]),
      ]),
    );
  }
}
