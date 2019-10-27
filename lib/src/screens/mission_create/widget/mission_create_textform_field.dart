import 'package:flutter/material.dart';

class MissionCreateTextFormField extends StatelessWidget {
  final String placeholder;
  final TextInputType textInputType;
  final bool obscure;

  final double textSize;
  final TextAlign textAlign;

  final bool autovalidate;
  final bool autocorrect;

  final bool invalidate;

  final TextInputAction textInputAction;

  final FocusNode focusNode;

  final Function validator;
  final Function onChanged;
  final Function onEditingComplete;
  final Function onFieldSubmitted;

  TextEditingController controller = TextEditingController();

  MissionCreateTextFormField(
      {this.placeholder,
      this.textInputType = TextInputType.text,
      this.validator,
      this.obscure = false,
      this.onChanged,
      this.onEditingComplete,
      this.controller,
      this.autovalidate = false,
      this.autocorrect = false,
      this.focusNode,
      this.onFieldSubmitted,
      this.textInputAction,
      this.textSize = 16,
      this.textAlign = TextAlign.left,
      this.invalidate = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: this.controller,
      autovalidate: this.autovalidate,
      autocorrect: this.autocorrect,
      scrollPadding: EdgeInsets.zero,
      decoration: InputDecoration.collapsed(
        hintText: this.placeholder,
        fillColor: Colors.white,
        hasFloatingPlaceholder: true,
        hintStyle: TextStyle(fontSize: this.textSize, color: (this.invalidate)? Color(0xffff0000):Color(0xffAEAEAE), height: 1.0, textBaseline: TextBaseline.alphabetic),
//        contentPadding: EdgeInsets.zero,
        //fillColor: Colors.green
      ),
      onEditingComplete: this.onEditingComplete,
      onFieldSubmitted: this.onFieldSubmitted,
      onChanged: this.onChanged,
      validator: this.validator,
      keyboardType: this.textInputType,
      textInputAction: this.textInputAction,
      obscureText: this.obscure,
      focusNode: this.focusNode,
      textAlign: this.textAlign,
      style: TextStyle(fontSize: this.textSize, color: Colors.black, height: 1.0, fontWeight: FontWeight.w600, textBaseline: TextBaseline.alphabetic),
    );
  }
}
