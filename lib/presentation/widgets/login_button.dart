import 'package:flutter/material.dart';
import 'package:mizan_app/core/routes/app_routes.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/name.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.green,
      onPressed: (){
        
        Navigator.of(context).pushReplacementNamed(AppRoutes.homeScreen);
      },
     child: Text(AppStrings.login,
     style: TextStyle(color: AppColors.white),));
     
  }
}