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
   String selectedCountry="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.babyBlue,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [         
          ElevatedButton(onPressed: (){
            for (var item in data) {
            print("Username: ${item.name}");
            print("Email: ${item.email}");
            print("salary:${item.salary}");
            print("balance: ${item.balance}");
            print("country ${item.country}");
            username = item.name; 
          }
          
          },
           child: Text(AppStrings.name)),
        
           ElevatedButton(onPressed: (){
            setState(() {
    // هنا نعيد جلب البيانات وهي فارغة لتحديث الشاشة
    var emptyData = HiveModel().getData(); 
    print("List Length: ${emptyData.length}");
  });

        
      
          },
           child: Text(AppStrings.email)),
        ],),
      )
    );
  }
}