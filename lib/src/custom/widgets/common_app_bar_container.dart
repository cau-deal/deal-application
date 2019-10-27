import 'package:flutter/material.dart';

class CommonAppBarContainer extends StatelessWidget {
  final Widget child;
  final Widget header;
  final List<Widget> actions;

  final String text;
  final IconData icon;
  final double iconSize;
  final bool showBottomBorder;

  final Function onBackPressed;

  CommonAppBarContainer({
    @required this.child,
    @required this.text,
    this.iconSize = 16.0,
    this.icon = Icons.arrow_back_ios,
    this.showBottomBorder = true,
    this.header,
    this.actions,
    this.onBackPressed,
  }) : assert(child != null);

  @override
  Widget build(BuildContext context) {
    final ModalRoute<dynamic> parentRoute = ModalRoute.of(context);
    final bool useCloseButton = parentRoute is PageRoute<dynamic> && parentRoute.fullscreenDialog;

    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: AppBar(
          brightness: Brightness.light,
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
              child: Container(
                decoration: this.showBottomBorder ? BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xffe3e3e3), width: 1))) : null,
              ),
              preferredSize: Size.fromHeight(0.0)),
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          actions: this.actions,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  if (this.onBackPressed != null) {
                    onBackPressed();
                  } else
                    Navigator.pop(context);
                },
                icon: useCloseButton ? Icon(Icons.close, color: Colors.black) : Icon(Icons.arrow_back_ios, color: Colors.black, size: 15),
              ),
              (this.text == null)
                  ? Container(color: Colors.white, width: 300, child: header)
                  : Text(this.text,
                      style: TextStyle(
                        fontFamily: "NanumSquare",
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        letterSpacing: -0.5,
                      ))
            ],
          ),
        ),
      ),
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 0),
          child: Center(
            child: this.child,
          )),
    );
  }
}
