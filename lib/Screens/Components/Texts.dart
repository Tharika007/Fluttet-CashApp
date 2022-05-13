import 'package:flutter/material.dart';

class Labeltext extends StatelessWidget {
  final String label;
  final Color textColor;
  final EdgeInsets margin;
  final double fontsize;
  final FontWeight fontweight;
  final TextAlign textalign;

  const Labeltext({
    Key? key,
    required this.textalign,
    required this.label,
    required this.textColor,
    required this.margin,
    required this.fontsize,
    required this.fontweight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final _Width = MediaQuery.of(context).size.width;

    return Text(
      label,
      textAlign: textalign,
      style: TextStyle(
        fontSize: fontsize,
        color: textColor,
        fontWeight: fontweight,
      ),
    );
  }
}

class displaytext extends StatelessWidget {
  final String text;
  final Color textColor;
  final EdgeInsets margin;
  final double fontsize;
  final FontWeight fontweight;
  final TextAlign textalign;

  const displaytext({
    Key? key,
    required this.textalign,
    required this.text,
    required this.textColor,
    required this.margin,
    required this.fontsize,
    required this.fontweight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final _Width = MediaQuery.of(context).size.width;

    return Text(
      text,
      textAlign: textalign,
      style: TextStyle(
        fontSize: fontsize,
        color: textColor,
        fontWeight: fontweight,
      ),
    );
  }
}

