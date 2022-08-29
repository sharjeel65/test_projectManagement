import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sizer/sizer.dart';
import 'package:test_project_management/page1.dart';
import 'package:test_project_management/page2.dart';
import 'package:test_project_management/page3.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool bool1 = true;
  bool bool2 = false;
  bool bool3 = false;
  var ContainerHeight = 4.0;
  var appbarheight = 8.0;

  void _scrollListener() {
    if (_controller.position.userScrollDirection == ScrollDirection.forward) {
      if (ContainerHeight != 4)
        setState(() {
          ContainerHeight = 4;
        });
      if (appbarheight != 8)
        setState(() {
          appbarheight = 8;
        });
    }
    if (_controller.position.userScrollDirection == ScrollDirection.reverse) {
      if (ContainerHeight == 4)
        setState(() {
          ContainerHeight = 8;
        });
      if (appbarheight == 8)
        setState(() {
          appbarheight = 2;
        });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = ScrollController()..addListener(_scrollListener);
  }

  ScrollController _controller = ScrollController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _controller,
            child: Column(
              children: [
                Container(
                  height: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? height * 90
                      : height * 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0xffEBF4FF),
                    Color(0xffE6FFFA),
                  ])),
                  child: ResponsiveRowColumn(
                    layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? ResponsiveRowColumnType.COLUMN
                        : ResponsiveRowColumnType.ROW,
                    columnMainAxisAlignment: MainAxisAlignment.start,
                    columnCrossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ResponsiveRowColumnItem(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(0),
                              constraints: BoxConstraints(
                                minHeight: ResponsiveWrapper.of(context)
                                        .isSmallerThan(DESKTOP)
                                    ? height * 20
                                    : height * 20,
                                minWidth: ResponsiveWrapper.of(context)
                                        .isSmallerThan(DESKTOP)
                                    ? width * 30
                                    : width * 20,
                                maxHeight: ResponsiveWrapper.of(context)
                                        .isSmallerThan(DESKTOP)
                                    ? height * 25
                                    : height * 30,
                                maxWidth: ResponsiveWrapper.of(context)
                                        .isSmallerThan(DESKTOP)
                                    ? width * 60
                                    : width * 60,
                              ),
                              child: Center(
                                child: Text(
                                  'Diene Job website',
                                  style: TextStyle(
                                    color: Color(0xff2D3748),
                                    fontSize: ResponsiveWrapper.of(context)
                                            .isSmallerThan(DESKTOP)
                                        ? 40.sp
                                        : 12.sp,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                                ? Container()
                                : Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xff319795),
                                              Color(0xff3182CE),
                                            ],
                                            begin: Alignment.centerRight,
                                            end: Alignment.centerLeft,
                                            stops: [0.1, 1]),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    width: width * 20,
                                    height: height * 7,
                                    child: Center(
                                      child: Text(
                                        'Kostenlos Registrieren',
                                        style: TextStyle(
                                          color: Color(0xffE6FFFA),
                                          fontSize: 3.sp,
                                        ),
                                      ),
                                    ),
                                  )
                          ],
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        child: Container(
                          height: ResponsiveWrapper.of(context)
                                  .isSmallerThan(DESKTOP)
                              ? height * 60
                              : height * 60,
                          child: Center(
                            child: Image(
                              image: AssetImage(
                                'agreement.png',
                              ),
                              height: ResponsiveWrapper.of(context)
                                      .isSmallerThan(DESKTOP)
                                  ? height * 100
                                  : height * 40,
                              width: ResponsiveWrapper.of(context)
                                      .isSmallerThan(DESKTOP)
                                  ? width * 100
                                  : width * 40,
                            ),
                          ),
                          decoration: ResponsiveWrapper.of(context)
                                  .isSmallerThan(DESKTOP)
                              ? null
                              : BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                          ? height * 1
                          : height * 10,
                      left: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                          ? 0
                          : width * 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Color(0xffCBD5E0),
                        width: 1,
                      )),
                  width: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? width * 90
                      : width * 30,
                  height: height * 6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Center(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  bool1 = true;
                                  bool2 = false;
                                  bool3 = false;
                                });
                              },
                              child: HoverContainer(
                                decoration: BoxDecoration(
                                    color: bool1
                                        ? Color(0xff81E6D9)
                                        : Colors.transparent,
                                    border: Border(
                                        right: BorderSide(
                                      color: Color(0xffCBD5E0),
                                      width: 1,
                                    ))),
                                hoverDecoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                    color: Color(0xffCBD5E0),
                                    width: 1,
                                  )),
                                  color: Color(0xffE6FFFA),
                                ),
                                child: Center(
                                  child: Text(
                                    'Arbeitnehmer',
                                    style: TextStyle(
                                        color: bool1
                                            ? Color(0xffE6FFFA)
                                            : Color(0xff319795),
                                        fontSize: ResponsiveWrapper.of(context)
                                                .isSmallerThan(DESKTOP)
                                            ? 13.sp
                                            : 2.5.sp),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  bool1 = false;
                                  bool2 = true;
                                  bool3 = false;
                                });
                              },
                              child: HoverContainer(
                                decoration: BoxDecoration(
                                    color: bool2
                                        ? Color(0xff81E6D9)
                                        : Colors.transparent,
                                    border: Border(
                                        right: BorderSide(
                                      color: Color(0xffCBD5E0),
                                      width: 1,
                                    ))),
                                hoverDecoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                    color: Color(0xffCBD5E0),
                                    width: 1,
                                  )),
                                  color: Color(0xffE6FFFA),
                                ),
                                child: Center(
                                  child: Text(
                                    'Arbeitgeber',
                                    style: TextStyle(
                                        color: bool2
                                            ? Color(0xffE6FFFA)
                                            : Color(0xff319795),
                                        fontSize: ResponsiveWrapper.of(context)
                                                .isSmallerThan(DESKTOP)
                                            ? 13.sp
                                            : 2.5.sp),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  bool1 = false;
                                  bool2 = false;
                                  bool3 = true;
                                });
                              },
                              child: HoverContainer(
                                color: bool3
                                    ? Color(0xff81E6D9)
                                    : Colors.transparent,
                                child: Center(
                                  child: Text(
                                    'Temporarboru',
                                    style: TextStyle(
                                        color: bool3
                                            ? Color(0xffE6FFFA)
                                            : Color(0xff319795),
                                        fontSize: ResponsiveWrapper.of(context)
                                                .isSmallerThan(DESKTOP)
                                            ? 13.sp
                                            : 2.5.sp),
                                  ),
                                ),
                                hoverColor: Color(0xffE6FFFA),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                bool1
                    ? Page1()
                    : bool2
                        ? Page2()
                        : bool3
                            ? Page3()
                            : Page1(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: width * 100,
              height: height * 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xff319795),
                      Color(0xff3182CE),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.1, 1]),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(right: width * 2),
              margin: EdgeInsets.only(bottom: height * 1),
              width: width * 100,
              height: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? height * appbarheight
                  : height * 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 3),
                      blurRadius: 15,
                    )
                  ]),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'login',
                    style: TextStyle(
                      color: Color(0xff319795),
                      fontSize:
                          ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                              ? 20.sp
                              : 5.sp,
                    ),
                  )),
            ),
          ),
          ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(-4, -2),
                              blurRadius: 14)
                        ]),
                    height: height * ContainerHeight,
                    width: width * 100,
                    child: Center(
                        child: ContainerHeight > 4
                            ? Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff319795),
                                          Color(0xff3182CE),
                                        ],
                                        begin: Alignment.centerRight,
                                        end: Alignment.centerLeft,
                                        stops: [0.1, 1]),
                                    borderRadius: BorderRadius.circular(12)),
                                width: width * 80,
                                height: height * 4,
                                child: Center(
                                  child: Text(
                                    'Kostenlos Registrieren',
                                    style: TextStyle(
                                      color: Color(0xffE6FFFA),
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                              )
                            : Container()),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
