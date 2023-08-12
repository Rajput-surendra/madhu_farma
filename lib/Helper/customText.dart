import 'package:flutter/material.dart';
class Custom_Text extends StatelessWidget {
  Custom_Text({Key? key,required this.text,}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
          text,
          style: TextStyle(
              color: Colors.grey
          ),
        );
  }
}
