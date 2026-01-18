import 'package:flutter/material.dart';
import 'package:mizan_app/core/theme/app_colors.dart';

class CircleTextColumn extends StatelessWidget {
  final String bal;
  final String txt;
  const CircleTextColumn({super.key, required this.bal, required this.txt});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
                  CircleAvatar(
                  radius: 54,
                  backgroundColor: AppColors.white,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.lightBlue,
                    child: Text(bal,
                    style:const TextStyle(
                      fontSize: 20,
                      color: AppColors.black),)
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(txt,
                  style:const TextStyle(
                    fontSize: 15,
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Lemonada"
                  ),),
                ],);
  }
}