import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final int? maxLines;
  final double borderRadius; 
  const TextFieldWidget({Key? key, required this.hintText, this.maxLines = 1,  this.borderRadius = 30.0, required this.textController , }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
      controller: textController,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: AppColors.textHolder,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(borderRadius)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(borderRadius)
        ),  
      ),
    );
  }
}