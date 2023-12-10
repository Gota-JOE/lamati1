import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamati1/screens/password/updateData4.dart';

import '../../consts/style.dart';

class ConfirmPass extends StatelessWidget {
  const ConfirmPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.whiteColor,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('lib/consts/images/miniVector.png'),
            ],
          ),
          SizedBox(height: 70,),
          Image.asset('lib/consts/images/Group 1.png'),
          SizedBox(height: 20,),
          Text('تم تغيير كلمة المرور بنجاح',style: GoogleFonts.tajawal(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 250,),
          Center(child:  TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateData()));
            },
            child: Text(
              'تسجيل الدخول',
              style: GoogleFonts.tajawal(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppConsts.blueButtom,
              ),
            ),
          ),),
        ],
      ),
    );
  }
}
