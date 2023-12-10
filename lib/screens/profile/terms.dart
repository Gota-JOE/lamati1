import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/style.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

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
                    width: 140,
                  ),
                  Text(
                    'الشروط والاحكام',
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      //width: 300,
                      ),
                  Text(
                    'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص\n من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم\n ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل\n المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم\n الاساسي.\n\n وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن\n له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد.\n من كتاب "حول أقاصي الخير والشر',
                    style: GoogleFonts.tajawal(fontSize: 14),
                  ),
                ],
              ),
              AppConsts.sizedH,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      //width: 300,
                      ),
                  Text(
                    'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص\n من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم\n ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل\n المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم\n الاساسي.\n\n وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن\n له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد.\n من كتاب "حول أقاصي الخير والشر',
                    style: GoogleFonts.tajawal(fontSize: 14),
                  ),
                ],
              ),
              AppConsts.sizedH,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      //width: 300,
                      ),
                  Text(
                    'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص\n من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم\n ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل\n المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم\n الاساسي.\n\n وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن\n له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد.\n من كتاب "حول أقاصي الخير والشر',
                    style: GoogleFonts.tajawal(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(width: 150,),
                  Text(
                    'موافق على الشروط والأحكام',
                    style: GoogleFonts.tajawal(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppConsts.blueButtom),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 25,
                    height: 24,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 3, color: Color(0xFF0B3FA8)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  )
                ],
              )
            ]),
          ),
        ]),
      ]),
    );
  }
}
