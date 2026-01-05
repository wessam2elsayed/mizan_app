import 'package:flutter/material.dart';
// import 'package:mizan_app/core/models/hive_model.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/balance.dart';
import 'package:mizan_app/presentation/widgets/choose_country.dart';
import 'package:mizan_app/presentation/widgets/email.dart';
import 'package:mizan_app/presentation/widgets/login_button.dart';
import 'package:mizan_app/presentation/widgets/name.dart';
import 'package:mizan_app/presentation/widgets/salary.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // final HiveModel hiveModel=HiveModel();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          
          children: [
            Center(
              child: Text(AppStrings.mizan,
              style: TextStyle(
                fontFamily: "ReemKufi",
                fontSize: 50
              ),),
            ),
            SizedBox(width: 300,height: 200,
            child: Image.asset("assets/images/login.gif"),),
            Name(nameController: TextEditingController(),),
            const SizedBox(height: 20,),
            Email(emailController: TextEditingController(),),
            const SizedBox(height: 20,),
            Salary(salaryController: TextEditingController(),),
            const SizedBox(height: 20,),
            Balance(balaanceController: TextEditingController(),),
            const SizedBox(height: 20,),
            ChooseCountry(),
            
            const SizedBox(height: 20,),
            LoginButton(nameController: TextEditingController(),
            emailController: TextEditingController(),
             salaryController: TextEditingController(),
             balanceController: TextEditingController(),)
        
        ],),
      ),
    );
  }
}