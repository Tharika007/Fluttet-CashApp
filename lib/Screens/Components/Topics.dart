import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:cashapp/Constants.dart';

class Topic extends StatelessWidget {
  final String topic;
  final Color textColor;
  final EdgeInsets margin;
  final double fontsize, width, height;
  final FontWeight fontweight;
  final TextAlign textalign;

  const Topic({
    Key? key,
    required this.width,
    required this.height,
    required this.textalign,
    required this.topic,
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

    return Container(
      height: height,
      width: width,
      margin: margin,
      child: Text(
        topic,
        textAlign: textalign,
        style: TextStyle(
          fontSize: fontsize,
          color: textColor,
          fontWeight: fontweight,
        ),
      ),
    );
  }
}
