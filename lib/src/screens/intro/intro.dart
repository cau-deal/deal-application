import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

import 'widgets/intro_step1.dart';
import 'widgets/intro_step2.dart';
import 'widgets/intro_step3.dart';

class IntroPage extends StatelessWidget {

  final PageController controller = PageController();

  @override
  Widget build(BuildContext ctx) {
    return new Container(
            child: new Stack(
              children: <Widget>[
                PageView(
                  controller: controller,
                  children: <Widget>[ IntroStep1(), IntroStep2(), IntroStep3() ],
                ),
                Positioned(
                  child: new PageIndicator(
                    layout: PageIndicatorLayout.NONE,
                    size: 6.0,
                    controller: controller,
                    space: 6.0,
                    count: 3,
                    activeColor: Colors.black,
                    color: Colors.white
                  ),
                  top: 100.0,
                  left: 40.0,
                ),
              ],
            )
          );
  }
}