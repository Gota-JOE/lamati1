import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamati1/screens/login_screen/home.dart';
import 'package:lamati1/screens/login_screen/singup.dart';
import '../../consts/style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppConsts.whiteColor,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('lib/consts/images/miniVector.png'),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'تسجيل الدخول',
                      style: GoogleFonts.tajawal(
                          color: AppConsts.blueButtom,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      ' ! مرحبا بك مجددا',
                      style: GoogleFonts.tajawal(
                          color: AppConsts.blueButtom,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 70,),
          SizedBox(
            width: 350,
            child: Text(
              'الاسم',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          AppConsts.def,
          AppConsts.sizedH,
          SizedBox(
            width: 350,
            child: Text(
              'البريد الالكتروني',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          AppConsts.def,
          //AppConsts.sizedH,
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: AppConsts.blueButtom,
                borderRadius: BorderRadius.circular(10)),
            height: 50,
            width: 350,
            child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Text(
                  'دخول',
                  style: AppConsts.whiteSmallText,
                )),
          ),
          SizedBox(
            height: 230,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Singup()));
                    },
                    child: Text(
                      'حساب جديد ',
                      style: GoogleFonts.tajawal(
                          color: AppConsts.blueButtom,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                Text('ليس لديك حساب ؟ ',style: GoogleFonts.tajawal(fontWeight: FontWeight.bold,fontSize: 10),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
