import 'package:flutter/material.dart';
import 'package:mizan_app/core/models/hive_map_model.dart';
import 'package:mizan_app/core/models/hive_model.dart';
import 'package:mizan_app/core/routes/app_routes.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/balance.dart';
import 'package:mizan_app/presentation/widgets/choose_country.dart';
import 'package:mizan_app/presentation/widgets/email.dart';
import 'package:mizan_app/presentation/widgets/login_elevated_button.dart';
import 'package:mizan_app/presentation/widgets/name.dart';
import 'package:mizan_app/presentation/widgets/salary.dart';

class LoginScreen extends StatefulWidget {
  

   const LoginScreen({super.key});

   

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final salaryController = TextEditingController();
  final balanceController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  

  final HiveModel hiveModel=HiveModel();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
           key: _formKey,
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
              Name(nameController: nameController,),
              const SizedBox(height: 20,),
              Email(emailController: emailController,),
              const SizedBox(height: 20,),
              Salary(salaryController: salaryController,),
              const SizedBox(height: 20,),
              Balance(balaanceController: balanceController,),
              const SizedBox(height: 20,),
              ChooseCountry(),
              
              const SizedBox(height: 20,),

              LoginElevatedButton(onPressed:
              (){
                if (_formKey.currentState!.validate()){
                  setState(() {
              HiveModel().addData(HiveMapModel(
                  name:nameController.text,
                    email: emailController.text,
                    salary: int.parse(salaryController.text),
                    balance: int.parse(balanceController.text),
                 ));
            });

             Navigator.of(context).pushReplacementNamed(AppRoutes.homeScreen);
             print(HiveModel().getData().length);
          }else{
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(AppStrings.fillAllFields,
              style: TextStyle(color: AppColors.black),),
              backgroundColor: AppColors.lightGreen,)
            );
                }
              }
              ),
             


          
          ],),
        ),
      ),
      )
    );
  }
}