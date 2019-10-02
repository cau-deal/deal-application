import 'package:flutter/material.dart';


class UnderCircleTabBar extends StatelessWidget {

  final List<String> items;

  UnderCircleTabBar({
    @required this.items,
  }) : assert(items != null);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                  color: Color(0xffE3E3E3),
                  width: 1.0,
                  style: BorderStyle.solid,
                )
            ),
          color: Colors.white
        ),
        padding: EdgeInsets.only(left: 15, right: 15),
        height: 40,
        child: TabBar(
            unselectedLabelStyle: TextStyle(fontFamily: "NanumSquare", fontSize: 12.0, fontWeight: FontWeight.w600),
            labelStyle: TextStyle(fontFamily: "NanumSquare", fontSize: 12.0, fontWeight: FontWeight.w600),
            indicator: CustomTabIndicator(),
            labelColor: Color(0xff5F75AC),
            unselectedLabelColor: Color(0xff333333),
            tabs: this.items.map((title) => Tab(text: title)).toList()
        )
    );
  }
}

class CustomTabIndicator extends Decoration {
  @override
  _CustomPainter createBoxPainter([VoidCallback onChanged]) {
    return new _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {

  final CustomTabIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);

    //offset is the position from where the decoration should be drawn.
    //configuration.size tells us about the height and width of the tab.
    final Rect rect = offset & configuration.size;
    final Paint paint = Paint();

    paint.color = Color(0xff5F75AC);
    paint.style = PaintingStyle.fill;

    final dx = offset.dx + (rect.width / 2);
    final dy = rect.height - 8;

    canvas.drawCircle(Offset(dx, dy), 2.5, paint);
  }

}

