import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'src/app.dart';

SharedPreferences sharedPreferences;

void main() async {
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(App());
}