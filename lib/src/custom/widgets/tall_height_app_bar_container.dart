import 'package:flutter/material.dart';

class TallHeightAppBarContainer extends StatelessWidget {

  final Widget child;
  final String text;

  TallHeightAppBarContainer({
    @required this.child,
    @required this.text
  }) : assert(child != null);

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
              icon: const Icon(Icons.arrow_back_ios),
              iconSize: 16.0,
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

