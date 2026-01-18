import 'package:flutter/material.dart';
import 'package:mizan_app/core/routes/app_routes.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),
    (){
      Navigator.of(context).pushReplacementNamed(AppRoutes.loginScreen);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/mizan.png"),
          Text(AppStrings.mizan,
          style:const TextStyle(
            fontFamily: "Gulzar",
            fontSize: 40,
            color: AppColors.white
          ),)
        ],
      ),
    );
  }
}