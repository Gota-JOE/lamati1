import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/style.dart';
import 'add_car_2.dart';

class AddCarOne extends StatelessWidget {
  AddCarOne({Key? key}) : super(key: key);

  final List<Color> colors = [
    Colors.grey,
    Colors.black,
    Colors.blue,
    Colors.brown,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      height: 100,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          child: Image.asset(
                              'lib/consts/images/bi_arrow-right.png'),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          'مركبة جديدة',
                          style: GoogleFonts.tajawal(
                              color: AppConsts.blueButtom,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 350,
                      child: Text(
                        'نوع المركبة',
                        textAlign: TextAlign.right,
                        style: AppConsts.smallText,
                      ),
                    ),
                    AppConsts.AddCar,
                    AppConsts.sizedH,
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 110,
              ),
              Text(
                'ماركة المركبة',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blueButtom,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 100,
              ),
              Text(
                'موديل المركبة',
                style: GoogleFonts.tajawal(
                    color: AppConsts.blueButtom,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              AppConsts.AddCarSmall1,
              SizedBox(
                width: 10,
              ),
              AppConsts.AddCarSmall2,
            ],
          ),
          AppConsts.sizedH,
          Row(
            children: [
              SizedBox(
                width: 300,
              ),
              Text(
                'لون المركبة',
                style: GoogleFonts.tajawal(
                    fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          AppConsts.sizedH,
          Row(
            children: colors.map((color) {
              return Container(
                width: 70,
                height: 35,
                //padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(4),
                decoration: ShapeDecoration(
                    color: color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              );
            }).toList(),
          ),
          AppConsts.sizedH,
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 374,
                  height: 199,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 3, color: Color(0xFFC5D4F5)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'اضافة صورة للمركبة (اختياري)',
                    style: GoogleFonts.tajawal(fontSize: 15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                        'lib/consts/images/ant-design_camera-outlined.png')),
              ),
            ],
          ),
          AppConsts.sizedH,
          SizedBox(
            width: 350,
            child: Text(
              'رقم الهاتف (اختياري)',
              textAlign: TextAlign.right,
              style: AppConsts.smallText,
            ),
          ),
          AppConsts.sizedH,
          Container(
            width: 377,
            height: 60,
            decoration: ShapeDecoration(
              //color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 3, color: Color(0xFFC5D4F5)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(
                color: AppConsts.blueButtom,
                borderRadius: BorderRadius.circular(10)),
            height: 50,
            width: 350,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddCarTwo()));
              },
              child: Text(
                'دخول',
                style: AppConsts.whiteSmallText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*Expanded(
            child: ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
                itemCount: colors.length,
                itemBuilder: (BuildContext context, int index) {
                  Color color = colors[index];
                  return Container(
                    width: 50,
                    height: 35,
                    decoration: ShapeDecoration(
                        color: color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  );
                },
              ),
          ),*/
