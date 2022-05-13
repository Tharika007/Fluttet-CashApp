import 'package:flutter/material.dart';
import '../../constants.dart';

class Dropdown extends StatelessWidget {
  final String labeltext;
  final void Function(String?)? onChanged;
  final Color textColor, backgroundcolor;
  final EdgeInsets margin;
  final double width, height;
  final List<String> items;

  const Dropdown({
    Key? key,
    required this.items,
    required this.labeltext,
    required this.width,
    required this.height,
    required this.onChanged,
    required this.textColor,
    required this.backgroundcolor,
    required this.margin,
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
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(7.0),
            ),
          ),
          filled: true,
          fillColor: backgroundcolor,
          labelText: labeltext,
          labelStyle: TextStyle(color: textColor, fontSize: 18),
          contentPadding: const EdgeInsets.all(17.0),
        ),
        dropdownColor: backgroundcolor,
        icon: Icon(Icons.arrow_drop_down, color: textColor),
        iconSize: 40,
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(color: Colors.black, fontSize: 17),
            ),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
