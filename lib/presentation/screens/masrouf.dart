import 'package:flutter/material.dart';
import 'package:mizan_app/core/models/hive_model.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';

class Masrouf extends StatefulWidget {
  const Masrouf({super.key});

  @override
  State<Masrouf> createState() => _MasroufState();
}

class _MasroufState extends State<Masrouf> {
  final data =HiveModel().getData();
   String username="";
   String email="";
   String salary="";
   String balance="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.babyBlue,
      body: Center(
        child: ElevatedButton(onPressed: (){
                 username=data[0].name;
        email=data[0].email;
        salary = data[0].salary.toString(); 
        balance = data[0].balance.toString();
        print(username);
          print (email );
          print(salary);
          print(balance);
        },
         child: Text(AppStrings.name)),
      ),
    );
  }
}