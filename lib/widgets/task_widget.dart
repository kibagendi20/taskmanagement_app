import 'package:flutter/widgets.dart';

class TaskWidget extends StatelessWidget {
  final String text;
  final Color textColor;
   const TaskWidget({Key? key, required this.text, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height/14,
      decoration:  BoxDecoration(
        color: const Color(0xFFedf0f8),
        borderRadius: BorderRadius.circular(0)
      ),
      child: Text(text, style: TextStyle(
        color: textColor,
        fontSize: 20
      )),
    );
  }
}