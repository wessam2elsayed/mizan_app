import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';

class LoginElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  const LoginElevatedButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
       style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
      onPressed: onPressed,
       child:  Text(AppStrings.login,
     style: TextStyle(color: AppColors.white,
     fontSize: 20,
        fontFamily: "ReadexPro"),
     ));
  }
}