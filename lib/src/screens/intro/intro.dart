import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

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
                  children: <Widget>[
                    Container(
                      color: Colors.pink,
                    ),
                    Container(
                      color: Colors.cyan,
                    ),
                    IntroStep3()
                  ],
                ),
                Positioned(
                  child: new PageIndicator(
                    layout: PageIndicatorLayout.NONE,
                    size: 6.0,
                    controller: controller,
                    space: 6.0,
                    count: 3,
                  ),
                  top: 100.0,
                  left: 40.0,
                ),
              ],
            )
          );
  }
}