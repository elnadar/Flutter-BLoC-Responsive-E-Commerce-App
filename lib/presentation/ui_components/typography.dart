import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class H3 extends StatelessWidget {
  const H3(
    this._text, {
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  final String _text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: fontSize ?? 28.r,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }
}
