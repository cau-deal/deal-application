import 'package:flutter/material.dart';

class CommonAppBarContainer extends StatelessWidget {

  final Widget child;
  final String text;
  final IconData icon;
  final double iconSize;
  final bool showBottomBorder;

  CommonAppBarContainer({
    @required this.child,
    @required this.text,
    this.iconSize = 16.0,
    this.icon = Icons.arrow_back_ios,
    this.showBottomBorder = true,
  }) : assert(child != null), assert(text != null);

  @override
  Widget build(BuildContext context) {

    final ModalRoute<dynamic> parentRoute = ModalRoute.of(context);
    final bool canPop = parentRoute?.canPop ?? false;

    return new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(58.0),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            bottom: PreferredSize(child: Container(
              decoration: this.showBottomBorder? BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xffe3e3e3), width: 1)
                )
              ) : null,
            ), preferredSize: Size.fromHeight(0.0)),
            automaticallyImplyLeading: true,
            titleSpacing: 0,
            title: Text(this.text, style:TextStyle(
              fontFamily: "NanumSquare",
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              letterSpacing: -0.5,
              ),
            ),
          ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top:3),
        child: Center(
          child: this.child,
        )
      ),

    );
  }
}
