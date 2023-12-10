import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomServicesCard extends StatelessWidget {
  const CustomServicesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:372,
      height:123,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),),
        shadows: [
          BoxShadow(
            color: Color(0xff6BC5D4F5),
            blurRadius: 30,
            offset: Offset(0,4),
            spreadRadius: 0,
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('lib/consts/images/carbon_close-filled (1).png'),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 35,),
              Text('نوع المركبة : فيراري',style: GoogleFonts.tajawal(fontSize: 13,fontWeight: FontWeight.bold),),
              Text('موديل المركبة',style: GoogleFonts.tajawal(fontSize: 12,fontWeight: FontWeight.bold),),
            ],
          ),
          Image.asset('lib/consts/images/Rectangle 24.png',height: 100,width: 150,fit: BoxFit.cover,),

        ],
      ),
    );
  }
}
