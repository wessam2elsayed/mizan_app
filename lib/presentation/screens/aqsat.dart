import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/add_quest.dart';
import 'package:mizan_app/presentation/widgets/mizan_label.dart';

class Aqsat extends StatelessWidget {
  const Aqsat({super.key});

  @override
  Widget build(BuildContext context) {

    // num qest;
    // num qestTime;
    // String qestNote;
   
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.blue,
        child:const Icon(Icons.add,
      color: AppColors.white),
        onPressed: (){
          showDialog(context: context,
           builder: (context)=>AddQuest());
        },
        ),
      backgroundColor: AppColors.babyBlue,
      body: Column(children: [
        MizanLabel(txt: AppStrings.AqsatLabel),
        const SizedBox(height: 20,),
       Text(AppStrings.noAqsat,
        style:const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.blue
        ),),
         const SizedBox(height: 20,),
        Container(width: 300,height: 300,
        decoration: BoxDecoration(
          image:const DecorationImage(image: AssetImage("assets/images/no quest.gif")),
          borderRadius: BorderRadius.circular(30),
          color: AppColors.lightBlue
        ),
        
       ),
    
       
      ],),
    );
  }
}