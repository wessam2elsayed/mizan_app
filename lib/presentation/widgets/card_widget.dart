import 'package:flutter/material.dart';
import 'package:mizan_app/core/theme/app_colors.dart';

class CardWidget extends StatelessWidget {
  final String txt;
  final double val;
  final num percent;
  final num masroufValue;
  final List<Widget> rows; 
  
  const CardWidget({super.key,
   required this.txt,
    required this.val,
     required this.percent,
      required this.masroufValue, 
      required this.rows});

  @override
  Widget build(BuildContext context) {
     
    return  Container(
      width: 200,
      height: 350,
      decoration: BoxDecoration(
        color: AppColors.babyBlue,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 4,
        color: AppColors.darkBlue),
      ),
      child: Column(children: [
        Text(txt,
        textAlign: TextAlign.center,
        style:const TextStyle(
          fontSize: 20,
          color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontFamily: "ReadexPro",
        ),),

        const SizedBox(height: 20,),
        Stack(
          children: [
            SizedBox(
              width: 100,height: 100,
              child: CircularProgressIndicator(
                        value: val,
                        backgroundColor: AppColors.lightBlue,
                        color: AppColors.darkBlue,
                      ),
            ),
            Column(
              children: [
                const SizedBox(height: 20,),
              Text("${percent.toString()}%",
              style:const TextStyle(
                      fontSize: 20,
                      color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ReadexPro",
                    ),),
                    Text(masroufValue.toString(),
                    style:const TextStyle(
                      fontSize: 20,
                      color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ReadexPro",
                    ),),                  
            ],)
          ],
        ),
        const SizedBox(height: 20,),
        ...rows,
        //  MasroufRow(
        //   txt: AppStrings.bills,
        //   icon: Icons.square,),
        //  MasroufRow(
        //   txt: AppStrings.education,
        //   icon: Icons.book),
        //  MasroufRow(
        //   txt: AppStrings.healthcare,
        //   icon: Icons.health_and_safety),
        //  MasroufRow(
        //   txt: AppStrings.transport,
        //   icon: Icons.car_repair),
        //  MasroufRow(
        //   txt: AppStrings.call,
        //   icon: Icons.phone)
      ],),

      
    );
  }
}