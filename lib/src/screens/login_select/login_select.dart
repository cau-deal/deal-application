import 'package:flutter/material.dart';

class LoginSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage( "res/images/select_bg.png" ),
              fit: BoxFit.cover,
            ),
            color: Colors.black26
        ),
        child: Padding(
            padding: const EdgeInsets.all(30),
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
            )
        )
    );
  }
}