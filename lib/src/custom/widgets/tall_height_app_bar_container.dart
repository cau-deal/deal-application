import 'package:flutter/material.dart';

class TallHeightAppBarContainer extends StatelessWidget {

  final Widget child;
  final String text;
  final IconData icon;
  final double iconSize;

  TallHeightAppBarContainer({
    @required this.child,
    @required this.text,
    this.iconSize = 16.0,
    this.icon = Icons.arrow_back_ios
  }) : assert(child != null), assert(text != null);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(64.0),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            bottom: PreferredSize(child: Container(), preferredSize: Size.fromHeight(0.0)),
            leading: IconButton(
              icon: Icon(this.icon),
              iconSize: this.iconSize,
              padding: const EdgeInsets.only(left:21.0, top: 10.0),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.only(left: 42),
                height: 45.0,
                width: double.infinity,
                color: Colors.white,
                child: Text(text, style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 20,
                    fontWeight:FontWeight.w600
                ))
            ),
            Expanded(
              child: this.child,
            )
          ],
        )
      ),

    );
  }
}

