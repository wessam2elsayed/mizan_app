import 'package:flutter/material.dart';
import 'package:mizan_app/core/theme/app_colors.dart';

class MasroufRow extends StatelessWidget {
  final String txt;
  final IconData icon;
  const MasroufRow({super.key,
   required this.txt, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Text(txt,
      style:const TextStyle(
                      fontSize: 15,
                      color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ReadexPro",
                    ),),
                    Icon(icon)
    ],);
  }
}