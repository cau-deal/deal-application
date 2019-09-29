import 'package:deal/src/screens/login_select/bloc_pattern.dart';
import 'package:flutter/material.dart';

class LoginSelectPage extends StatelessWidget {

  final bloc = new Bloc();

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