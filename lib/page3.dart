import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:sizer/sizer.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
                'Drei einfache Schritte zur Vermittlung neuer Mitarbeiter',
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
                      top: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?height * 30: 7.h  ,
                      right: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?width * 20 :0  ),
                  width: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 30 : width * 10,
                  height: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 20 : height * 20,
                  child: Center(
                    child: Text(
                      '1.',
                      style: TextStyle(
                          fontSize: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?110.sp  : 15.sp,
                          color: Color(0xff718096)),
                    ),
                  ),
                  decoration: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        )
                      : null,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 35 : width * 30,
                      top: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 15.h : height * 45),
                  constraints: BoxConstraints(
                      maxWidth: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 30 : width * 60,
                      maxHeight: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 20 : height * 10),
                  child: Center(
                    child: Text(
                      'Erstellen dein Unternehmensprofil',
                      style: TextStyle(
                          fontSize: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 5.sp : 20.sp,
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
                    width: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 20 : width * 70,
                    height: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 40 : height * 40,
                    margin: EdgeInsets.only(
                        left: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 42 : width * 20,
                        top: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 0 : height * 15),
                    child: Center(
                      child: Image(
                        image: AssetImage('p32.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 65 : width * 0,
                        top: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 10.h : 0),
                    child: Center(
                      child: Text(
                        '2.',
                        style: TextStyle(
                            fontSize: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 15.sp : 110.sp,
                            color: Color(0xff718096)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 70 : width * 30,
                        top: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 12.h : height * 2),
                    constraints: BoxConstraints(
                      maxWidth: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 30 : width * 60,
                      maxHeight: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 20 : height * 20,
                    ),
                    child: Center(
                      child: Text(
                        'Erhalte Vermittlungs- andebot von Arbeitgeber',
                        style: TextStyle(
                            fontSize: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 5.sp : 20.sp,
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
                  width: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 20 : width * 70,
                  height: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 40 : height * 40,
                  margin: EdgeInsets.only(
                      left: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 65 : width * 20,
                      top: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 0 : height * 15),
                  child: Center(
                    child: Image(
                      image: AssetImage('p33.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 27 : width * 0,
                      top: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 7.h : 0),
                  padding: EdgeInsets.only(right: width * 4, bottom: 6.h),
                  width: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 15 : width * 50,
                  height: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 30 : height * 25,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '3.',
                      style: TextStyle(
                          fontSize: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 15.sp : 110.sp,
                          color: Color(0xff718096)),
                    ),
                  ),
                  decoration: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        )
                      : null,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 35 : width * 35,
                      top: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 16.2.h : height * 5),
                  constraints: BoxConstraints(
                    maxWidth: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? width * 30 : width * 60,
                    maxHeight: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? height * 20 : height * 20,
                  ),
                  child: Center(
                    child: Text(
                      'Vermittlung nach Provision oder Stunderlohn',
                      style: TextStyle(
                          fontSize: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 5.sp : 20.sp,
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
