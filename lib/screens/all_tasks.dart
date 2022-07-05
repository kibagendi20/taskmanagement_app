import 'package:flutter/material.dart';

import 'package:taskmanagement_app/utils/colors/app_colors.dart';
import 'package:taskmanagement_app/widgets/button_widget.dart';
import 'package:taskmanagement_app/widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myData = [
      "Try harder",
      "Try smarter"
    ];
    final leftEditIcon = Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(bottom: 10),
      color: const Color(0xFF2e3253).withOpacity(0.5),
      child: const Icon(Icons.edit,
      color: Colors.white,),
    );
     final rightDeleteIcon = Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.redAccent,
      child: const Icon(Icons.delete,
      color: Colors.white,),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            alignment: Alignment.topLeft,
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height/3,
            decoration: const BoxDecoration(
              //color: AppColors.mainColor
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/header1.jpg")
                )
            ),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back, color: AppColors.secondaryColor,)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.home, size: 20, color: AppColors.secondaryColor,)),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration:  BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12.5)
                  ),
                  child: const Icon(Icons.add, size: 20, color: Colors.white,),
                ),
                Expanded(child: Container()),
                IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_month_outlined, size: 20, color: AppColors.secondaryColor,)),
                const SizedBox(
                  width: 5,
                ),
                const Text("2", style: TextStyle(
                  color: AppColors.secondaryColor,
                  fontSize: 18,
                ),)
              ],
            ),
          ),
         Flexible(
           child: ListView.builder(
             itemCount: myData.length,
             itemBuilder: ((context, index) => Dismissible(
               background: leftEditIcon,
               secondaryBackground: rightDeleteIcon,
              onDismissed: (direction) => print("Witing for confirmation"),
              confirmDismiss: (direction)async{
                
                if(direction == DismissDirection.startToEnd){
                  showModalBottomSheet(
                    barrierColor: Colors.transparent,
                     backgroundColor: Colors.transparent,
                    context: context, builder: (_){
                    return Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: 550,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2e3253).withOpacity(0.4),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          ButtonWidget(
                            backgroundColor: AppColors.mainColor, 
                            text: "View", 
                            textColor: Colors.white),
                            SizedBox(height: 20,),
                            ButtonWidget(
                              backgroundColor: AppColors.mainColor, 
                              text: "Edit", 
                              textColor: Colors.white)
                        ],
                      ),
                    );
                  });
                  return false;
                }else{
                  return Future.delayed(const Duration(seconds: 1), () => direction == DismissDirection.endToStart );
                }
                
              },

               //key allow flutter to uniquely identify widgets
               key: ObjectKey(myData[index]),
               child: Container(
               margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
               child: TaskWidget(
                 text: myData[index], 
                 textColor: Colors.blueGrey),
                        ),
             ))),
         )
        ],
      ),
    );
  }
}