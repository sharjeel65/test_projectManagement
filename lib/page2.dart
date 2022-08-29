import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/foundation.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? 0
                  : width * 30,
              top: height * 2),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? width * 70
                      : width * 30),
              child: Text(
                'Drei einfache Schritte zu deinem neuen Mitarbeiter',
                style: TextStyle(
                  color: Color(0xff4A5568),
                  fontSize: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? 24.sp
                      : 5.sp,
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Container(
                  width: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? width * 70
                      : width * 20,
                  height: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? height * 40
                      : height * 40,
                  margin: EdgeInsets.only(
                    left: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? width * 20
                        : width * 60,
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage('profile.png'),
                      height:
                          ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                              ? height * 50
                              : height * 40,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                          ? 0
                          : width * 27,
                      top: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 30  :7.h,
                      right: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?width * 20  : 0),
                  width: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?width * 30 : width * 10 ,
                  height: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?height * 20 : height * 20 ,
                  child: Center(
                    child: Text(
                      '1.',
                      style: TextStyle(
                          fontSize: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?110.sp : 15.sp ,
                          color: Color(0xff718096)),
                    ),
                  ),
                  decoration: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ?null
                      : BoxDecoration(
    color: Colors.grey.shade200,
    shape: BoxShape.circle,
    ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 30:width * 35  ,
                      top: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 41 :15.h ),
                  constraints: BoxConstraints(
                      maxWidth: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?width * 60  :width * 30 ,
                      maxHeight: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 10: height * 20 ),
                  child: Center(
                    child: Text(
                      'Erstellen dein Unternehmensprofil',
                      style: TextStyle(
                          fontSize: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 20.sp :5.sp ,
                          color: Color(0xff718096)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffE6FFFA), Color(0xffEBF4FF)])),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Container(
                    width: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?width * 70: width * 20  ,
                    height: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 40 : height * 40,
                    margin: EdgeInsets.only(
                        left: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 20:width * 42  ,
                        top: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?  height * 15:0 ),
                    child: Center(
                      child: Image(
                        image: AssetImage('p22.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?  width * 0:width * 65 ,
                        top: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 0  :10.h),
                    child: Center(
                      child: Text(
                        '2.',
                        style: TextStyle(
                            fontSize: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 110.sp :15.sp ,
                            color: Color(0xff718096)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 30 : width * 70, top: 16.2.h),
                    child: Center(
                      child: Text(
                        'Erstellen ein Jobinserat',
                        style: TextStyle(
                            fontSize: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?20.sp :  5.sp,
                            color: Color(0xff718096)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Container(
                  width: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 70 : width * 20,
                  height: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?  height * 40: height * 40,
                  margin: EdgeInsets.only(
                      left: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?width * 20 : width * 65 ,
                      top: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?  height * 15 :0),
                  child: Center(
                    child: Image(
                      image: AssetImage('p23.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 0  :width * 27,
                      top: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?  0 :7.h),
                  padding: EdgeInsets.only(right: width * 4, bottom: 6.h),
                  width: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 50 : width * 15,
                  height: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 25: height * 30 ,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '3.',
                      style: TextStyle(
                          fontSize: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 110.sp :15.sp ,
                          color: Color(0xff718096)),
                    ),
                  ),
                  decoration: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? null
                      : BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 35 : width * 35,
                      top: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 5: 16.2.h ),
                  constraints: BoxConstraints(
                    maxWidth: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?width * 60  :width * 30 ,
                    maxHeight: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 20 : height * 20,
                  ),
                  child: Center(
                    child: Text(
                      'Wahle deinan neuen Mitarbeiter aus',
                      style: TextStyle(
                          fontSize: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?20.sp :  5.sp,
                          color: Color(0xff718096)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
