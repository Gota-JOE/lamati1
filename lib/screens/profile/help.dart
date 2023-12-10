import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/style.dart';

class Help extends StatelessWidget {
  const Help({super.key});

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
                    'المساعدة',
                    style: GoogleFonts.tajawal(
                        color: AppConsts.blueButtom,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 275,
                  ),
                  Text(
                    'عن لمعتي',
                    style: GoogleFonts.tajawal(
                        color: AppConsts.blueButtom,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
              AppConsts.sizedH,
              Text(
                "وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي.\n\nوخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد. من كتاب حول أقاصي الخير والشر",
                style: GoogleFonts.tajawal(fontSize: 15),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(
                    width: 210,
                  ),
                  Text(
                    'كيف تستخدم لمعتي',
                    style: GoogleFonts.tajawal(
                        color: AppConsts.blueButtom,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
              AppConsts.sizedH,
              Text(
                "وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي.\n\nوخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد. من كتاب حول أقاصي الخير والشر",
                style: GoogleFonts.tajawal(fontSize: 15),
              ),
            ]),
          ),
        ]),
      ]),
    );
  }
}
