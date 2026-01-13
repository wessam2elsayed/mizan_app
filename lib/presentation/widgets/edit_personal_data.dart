import 'package:flutter/material.dart';
import 'package:mizan_app/core/models/hive_map_model.dart';
import 'package:mizan_app/core/models/hive_model.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/balance.dart';
import 'package:mizan_app/presentation/widgets/choose_country.dart';
import 'package:mizan_app/presentation/widgets/email.dart';
import 'package:mizan_app/presentation/widgets/name.dart';
import 'package:mizan_app/presentation/widgets/salary.dart';

class EditPersonalData extends StatefulWidget {
  const EditPersonalData({super.key});

  @override
  State<EditPersonalData> createState() => _EditPersonalDataState();
}

class _EditPersonalDataState extends State<EditPersonalData> {

  final  nameController = TextEditingController();
  final emailController = TextEditingController();
  final salaryController = TextEditingController();
  final balanceController = TextEditingController();
  String? selectedCountryName;

  final _formKey = GlobalKey<FormState>();
  
  final HiveModel hiveModel=HiveModel();

  @override
  void initState() {
    super.initState();
    final data = HiveModel().getData();
    if (data.isNotEmpty) {
      final user = data.last;
      nameController.text = user.name;
      emailController.text = user.email;
      salaryController.text = user.salary.toString();
      balanceController.text = user.balance.toString();
      selectedCountryName = user.country; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AlertDialog(
       title: Form(
          key: _formKey,
         child: Column(children: [
          Text(AppStrings.editPersonalData,
                        style:const TextStyle(
                          fontSize: 20,
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "ReadexPro",),),

                           const SizedBox(height: 20,),
                           Name(nameController: nameController,),
                           const SizedBox(height: 20,),
                           Email(emailController: emailController,),
                           const SizedBox(height: 20,),
                           Salary(salaryController: salaryController,),
                           const SizedBox(height: 20,),
                           Balance(balanceController: balanceController,),
                           const SizedBox(height: 20,),
                           ChooseCountry(
                            onCountryChanged: (country) { 
                              selectedCountryName = country;
                             },),              
                           const SizedBox(height: 20,),

                           Row(children: [
                            ElevatedButton(
                              onPressed: 
                              (){
                                if(_formKey.currentState!.validate()){
                                  final updatedUser = HiveMapModel(
                                  name: nameController.text,
                                  email: emailController.text,
                                  salary: num.parse(salaryController.text),
                                  balance: num.parse(balanceController.text),
                                  country: selectedCountryName ?? "",
                                  );
                                  HiveModel().saveOrUpdateUser(updatedUser);

                                  if (mounted) {
                                   Navigator.of(context).pop();                                     
                                  }                                    
                                }
                              },
                             child: Text(AppStrings.save,
                             style:const TextStyle(
                          fontSize: 15,
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "ReadexPro",),)),

                            const SizedBox(width: 20,),
                            ElevatedButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                               child: Text(AppStrings.cancel,
                               style:const TextStyle(
                          fontSize: 15,
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "ReadexPro",),)),
                           ],)
         
         ],),
       )
                        
    ),
    );
  }
}