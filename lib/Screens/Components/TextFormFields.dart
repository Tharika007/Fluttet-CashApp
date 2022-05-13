import 'package:cashapp/Constants.dart';
import 'package:flutter/material.dart';

class RoundedTextFormField extends StatelessWidget {
  final String labeltext;
  final Function press;
  final Color backgroundcolor, textColor;
  final EdgeInsets margin;
  final double width, height;

  const RoundedTextFormField({
    Key? key,
    required this.labeltext,
    required this.press,
    required this.backgroundcolor,
    required this.textColor,
    required this.margin,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: height,
      margin: margin,
      child: TextFormField(
        textAlign: TextAlign.left,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: TextStyle(fontSize: 18, color: textColor),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: backgroundcolor,
          contentPadding: const EdgeInsets.all(17),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  final String labeltext;
  final Function press;
  final Color backgroundcolor, textColor;
  final IconData icon;
  final EdgeInsets margin;
  final double width, height;

  const PasswordTextField({
    Key? key,
    required this.labeltext,
    required this.press,
    required this.backgroundcolor,
    required this.textColor,
    required this.icon,
    required this.margin,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Container(
      margin: margin,
      width: width,
      height: height,
      child: TextFormField(
        textAlign: TextAlign.left,
        cursorColor: Colors.black,
        obscureText: true,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: TextStyle(fontSize: 18, color: textColor),
          suffixIcon: Icon(
            icon,
            color: textColor,
            size: 25,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: backgroundcolor,
          contentPadding: const EdgeInsets.all(17),
        ),
      ),
    );
  }
}
