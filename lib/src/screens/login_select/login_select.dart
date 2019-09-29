import 'package:deal/src/login/bloc_pattern.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginSelectPage extends StatelessWidget {

  final bloc = new Bloc();

  @override
  Widget build(BuildContext ctx) {

    return Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          emailField(bloc),
          passwordField(bloc),
          Container(margin: EdgeInsets.all(30.0)),
          submitButton(bloc),
        ],
      )
    );
  }

  Widget emailField(bloc){
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot){
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "deal@deal.com",
            labelText: "Email Address",
            errorText: snapshot.error,
          ),
          obscureText: true,
        );
      }
    );
  }

  Widget passwordField(bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          decoration: InputDecoration(
              hintText: 'Must contain 8 characters',
              labelText: 'Password',
              errorText: snapshot.error
          ),
          obscureText: true,
        );
      },
    );
  }

  Widget submitButton(bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text('Login'),
          color: Colors.blue[700],
          textColor: Colors.white,
          onPressed: snapshot.hasData
              ? bloc.submit
              : null,
        );
      },
    );
  }
}