import 'package:flutter/material.dart';


class StyledTextFormField extends StatelessWidget {

  final String placeholder;
  final TextInputType textInputType;
  final bool obscure;

  final bool autovalidate;
  final bool autocorrect;

  final Function validator;
  final Function onChanged;
  final Function onEditingComplete;

  TextEditingController controller = TextEditingController();


  StyledTextFormField({
    this.placeholder,
    this.textInputType = TextInputType.text,
    this.validator,
    this.obscure = false,
    this.onChanged,
    this.onEditingComplete,
    this.controller,
    this.autovalidate = false,
    this.autocorrect = false
  });

  @override
  Widget build(BuildContext context) {
    return new TextFormField(
      controller: this.controller,
      autovalidate: this.autovalidate,
      autocorrect: this.autocorrect,
      decoration: new InputDecoration(
        labelText: this.placeholder,
        fillColor: Colors.white,
        hasFloatingPlaceholder: false,
        labelStyle: TextStyle(fontSize: 14.0, color: Color(0xffAEAEAE)),
        hintStyle: TextStyle(fontSize: 14.0, color: Colors.redAccent),
        contentPadding: const EdgeInsets.only(left:10, top:10, right:10, bottom: 10),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffCECECE), width: 1.5)
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff5F75AC), width: 1.5)
        ),
        //fillColor: Colors.green
      ),
      onEditingComplete: this.onEditingComplete,
      onChanged: this.onChanged,
      validator: this.validator,
      keyboardType: this.textInputType,
      obscureText: this.obscure,
      style: new TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w600
      ),
    );
  }
}