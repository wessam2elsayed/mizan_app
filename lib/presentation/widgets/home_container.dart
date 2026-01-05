import 'package:flutter/material.dart';
import 'package:mizan_app/core/theme/app_colors.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key,
   required this.img,
    required this.txt});

  final String img;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: AppColors.darkBlue,
          borderRadius: BorderRadius.circular(20)),
      
          child: Row(children: [
            const SizedBox(width: 20,),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(img),
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: Text(txt,
                         
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Handjet"
              )),
            )
          ],),
      ),
    );
  }
}