import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

class IntroPage extends StatelessWidget {

  final PageController controller = PageController();

  @override
  Widget build(BuildContext ctx) {
    return new MaterialApp(
        home: new Scaffold(
          body: new Container(
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
                    Container(
                      color: Colors.deepOrangeAccent,
                      child: Align(
                        child: FlatButton(
                          child: Text('FlatButton', style: TextStyle(fontSize: 24)),
                          onPressed: () => print("test"),
                          color: Colors.green,
                          textColor: Colors.white,
                        ),
                        alignment: AlignmentDirectional.bottomCenter,
                      )
                    ),
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
          )
        )
    );
  }
}