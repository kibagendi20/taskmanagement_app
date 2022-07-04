import 'package:flutter/material.dart';
import 'package:taskmanagement_app/utils/colors/app_colors.dart';
import 'package:taskmanagement_app/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/welcome.jpg"),
            fit: BoxFit.cover
            )

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                text: "Hello",
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor
                ),
                children: [
                  TextSpan(
                    text: "\nstart your beautiful day",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.smallTextColor
                    )
                  )
                ]
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/2.5,
            ),
            const ButtonWidget(
              backgroundColor: AppColors.mainColor, 
              text: 'Add Task', 
              textColor: Colors.white),
              const SizedBox(
                height: 20,
              ),
            const ButtonWidget(
              backgroundColor: Colors.white, 
              text: 'View Task', 
              textColor: AppColors.smallTextColor)
          ],
        ),
      ),
    );
  }
}