import 'package:flutter/material.dart';
import 'package:mizan_app/core/routes/app_routes.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';

class LogoutRow extends StatelessWidget {
  const LogoutRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 20),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue),
        onPressed: (){
           Navigator.of(context).pushReplacementNamed(AppRoutes.splashScreen);
        },
         child: Center(
          child: Text(
            AppStrings.logOut,
            style: TextStyle(color: AppColors.white,
         )))),

         const SizedBox(width: 100),
         Text(AppStrings.mizan,
         style: TextStyle(color: AppColors.black,
         fontSize: 50,
         fontWeight: FontWeight.bold,
         fontFamily: "ReemKufi"),)
    ],);
  }
}