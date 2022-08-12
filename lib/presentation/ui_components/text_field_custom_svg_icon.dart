import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TextFieldCustomSvgIcon extends StatelessWidget {
  const TextFieldCustomSvgIcon(
    this._iconSvgPath, {
    Key? key,
  }) : super(key: key);
  final String _iconSvgPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0.r),
      child: SvgPicture.asset(
        _iconSvgPath,
        height: 18.r,
      ),
    );
  }
}
