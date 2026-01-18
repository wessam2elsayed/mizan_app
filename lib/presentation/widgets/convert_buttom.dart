import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';

class ConvertButtom extends StatelessWidget {
  final VoidCallback onPressed;
  const ConvertButtom({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
     
       ),
        onPressed: onPressed,
       child: Text(AppStrings.convert,
        style:const TextStyle(color: AppColors.white,
        fontSize: 20,
        fontFamily: "ReadexPro"),
      ),
    );
       
  }
}