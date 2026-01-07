import 'package:flutter/material.dart';
import 'package:mizan_app/core/models/hive_map_model.dart';
import 'package:mizan_app/core/models/hive_model.dart';
import 'package:mizan_app/core/routes/app_routes.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';


class LoginButton extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController salaryController;
  final TextEditingController balanceController;

  const LoginButton({super.key,
   required this.nameController,
    required this.emailController, 
    required this.salaryController,
     required this.balanceController});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
      onPressed: (){
        if(widget.nameController.text.isNotEmpty &&
         widget.emailController.text.isNotEmpty &&
         widget.salaryController.text.isNotEmpty &&
          widget.balanceController.text.isNotEmpty){
            setState(() {
              HiveModel().addData(HiveMapModel(
                  name: widget.nameController.text,
                    email: widget.emailController.text,
                    salary: int.parse(widget.salaryController.text),
                    balance: int.parse(widget.balanceController.text),
                 ));
            });

             Navigator.of(context).pushReplacementNamed(AppRoutes.homeScreen);
             print(HiveModel().getData().length);
          }else{
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(AppStrings.fillAllFields,
              style: TextStyle(color: AppColors.black),),
              backgroundColor: AppColors.lightGreen,)
            );}
        
       
      },
     child: Text(AppStrings.login,
     style: TextStyle(color: AppColors.white),));
     
  }
}