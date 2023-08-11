import 'dart:ui';

import 'package:flutter/material.dart';

import 'Colors.dart';
class Btn extends StatelessWidget {
  final String? title;
  final VoidCallback? onPress;
  double? height;
  double? width;
  double? fSize;
  IconData? icon;
  Color? color;
  Btn({Key? key,
    this.title, this.onPress, this.height, this.width, this.fSize, this.icon,this.color
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color:colors.secondary,
    borderRadius: BorderRadius.circular(3)
        ),
        height: height,
        width: width,
        child: Center(
          child: Text(
            "$title",
            style:  TextStyle(
              color:colors.whiteTemp,
              fontSize: fSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
