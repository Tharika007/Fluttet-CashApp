import 'package:flutter/material.dart';
import '/../Constants.dart';

class RoundedButton extends StatelessWidget {
  final String hinttext;
  final void Function()? press;
  final Color textColor, backgroundcolor;
  final EdgeInsets margin;
  final double width;

  const RoundedButton({
    Key? key,
    required this.hinttext,
    required this.press,
    required this.backgroundcolor,
    required this.textColor,
    required this.margin,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;
    final Width = MediaQuery.of(context).size.width;

    return Container(
      height: Height * 0.070,
      margin: margin,
      width: width,
      child: FlatButton(
        onPressed: press,
        color: backgroundcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          hinttext,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.normal, fontSize: 18),
        ),
      ),
    );
  }
}
