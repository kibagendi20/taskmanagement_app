import 'dart:html';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;


  const ButtonWidget({Key? key, required this.backgroundColor, required this.text, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height/14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: backgroundColor,
      ),
      child: Text(
        text, style: TextStyle(color: textColor, fontSize: 20)
      ),
    );
  }
}