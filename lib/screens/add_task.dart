import 'package:flutter/material.dart';
import 'package:taskmanagement_app/utils/colors/app_colors.dart';
import 'package:taskmanagement_app/widgets/button_widget.dart';
import 'package:taskmanagement_app/widgets/textfield_widget.dart';

class AddTask extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController detailController = TextEditingController();
  AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/addtask1.jpg")
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back, color: AppColors.secondaryColor,))
            ],
          ),
          Column(
            children:  [
              TextFieldWidget(
              hintText: "Task name", 
              textController: nameController),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                maxLines: 3,
                borderRadius: 15,
                hintText: "Task detail", 
                textController: detailController),
                const SizedBox(
                height: 20,
              ),
                const ButtonWidget(
                  backgroundColor: AppColors.mainColor,
                   text: "Add", 
                   textColor: Colors.white)
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/6,
          )
        ],
      ),
    ),
    );
  }
}