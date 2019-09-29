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
            padding: const EdgeInsets.all(30);
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
            ),
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