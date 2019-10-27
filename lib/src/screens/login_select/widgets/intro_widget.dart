import 'dart:ui';

import 'package:deal/src/custom/widgets/custom_indicator.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class IntroWidget extends StatefulWidget {
  final Function onScrollLast;

  const IntroWidget({Key key, this.onScrollLast}) : super(key: key);

  @override
  IntroWidgetState createState() => IntroWidgetState();
}

class IntroWidgetState extends State<IntroWidget> {
  double pp = 0;
  bool isIncrease = false;

  double p_tx = 0;
  double p_ty = 0;
  double p_sx = 1;
  double p_sy = 1;

  PageController controller;

  void _onScroll() {
    isIncrease = (controller.page > pp);
    pp = controller.page;

    if (2 <= controller.page && controller.page <= 3) {
      widget.onScrollLast(3 - controller.page);
    }
  }

  Matrix4 _getInterpolation(double p) {
    double dp = (p != p.toInt()) ? p - p.toInt() : (isIncrease) ? 1 : 0;

    double tx = 0, sx = 1;
    double ty = 0, sy = 1;

    tx = (p == 0) ? 3 : (0 < p && p < 1) ? 3 - 33 * dp : (p == 1) ? -30 : (1 < p && p < 2) ? -5 * dp - 30 : (p == 2) ? -35 : -35 + 35 * dp;
    ty = (p == 0) ? 40 : (0 < p && p < 1) ? -120 * dp + 40 : (p == 1) ? -80 : (1 < p && p < 2) ? 20 * dp - 80 : (p == 2) ? -60 : -60 + 60 * dp;

    sx = (p <= 0) ? 1 : (0 < p && p < 1) ? 59 * dp + 1 : (p == 1) ? 60 : (1 < p && p < 2) ? 10 * dp + 60 : (p == 2) ? 70 : 70 - 69 * dp;
    sy = (p <= 0) ? 1 : (0 < p && p < 1) ? 59 * dp + 1 : (p == 1) ? 60 : (1 < p && p < 2) ? 10 * dp + 60 : (p == 2) ? 70 : 70 - 69 * dp;

    var mat = Matrix4.compose(vector.Vector3(tx, ty, 0), vector.Quaternion.euler(0, 0, 0), vector.Vector3(sx, sy, 0));

    return mat;
  }

  @override
  void initState() {
    controller = PageController(
      initialPage: 0,
      viewportFraction: 1.0,
    )..addListener(_onScroll);

    pp = 0.0;
    isIncrease = false;

    super.initState();
  }

  @override
  Widget build(BuildContext ctx) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: SizedBox(
              width: 400,
              height: 300,
              child: Stack(
                children: <Widget>[
                  PageView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        child: Text("학습 데이터가\n필요하세요?",
                            style: TextStyle(color: Color(0xff929292), fontSize: 50, fontWeight: FontWeight.w800, letterSpacing: -0.5, height: 1.3)),
                        padding: EdgeInsets.all(30),
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Image.asset("res/images/line1.png", height: 140),
                              SizedBox(height: 10),
                              Text("필요할 때\n언제든 의뢰!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xff333333), fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: -0.5, height: 1.3))
                            ],
                          )),
                      Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Image.asset("res/images/line2.png", height: 140),
                              SizedBox(height: 10),
                              Text("자투리 시간에\n언제든 작업!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xff333333), fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: -0.5, height: 1.3))
                            ],
                          )),
                      Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Image.asset("res/images/splash-logo-black-240.png", height: 140, width: 240),
                              SizedBox(height: 10),
                              Text("지금 바로 시작하세요!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xff333333), fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: -0.5, height: 1.3))
                            ],
                          )),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: AnimatedBuilder(
                      animation: controller,
                      builder: (context, _) {
                        return Transform(
                            transform: this._getInterpolation(controller.page ?? 0.0),
                            child: IgnorePointer(
                              child: Container(
                                  width: 1,
                                  height: 1,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Color(0xff5F75AC).withOpacity(0.5))),
                              ignoring: true,
                            ));
                      },
                    ),
                  )
                ],
              )),
          height: 200,
          margin: EdgeInsets.only(bottom: 10),
        ),
        PageIndicator(
          layout: PageIndicatorLayout.COLOR,
          size: 5,
          controller: controller,
          space: 3.0,
          count: 4,
          borderWidth: 1.0,
          activeColor: Color(0xff333333),
          borderColor: Color(0xff333333),
          color: Colors.transparent,
          clipArea: false,
        )
      ],
    ));
  }
}
