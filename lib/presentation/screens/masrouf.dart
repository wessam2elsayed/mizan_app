import 'package:flutter/material.dart';
import 'package:mizan_app/core/models/hive_model.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/card_widget.dart';
import 'package:mizan_app/presentation/widgets/mizan_label.dart';


class Masrouf extends StatefulWidget {
  const Masrouf({super.key});

  @override
  State<Masrouf> createState() => _MasroufState();
}

class _MasroufState extends State<Masrouf> {
  String salary="";
  @override
  void initState() {
    super.initState();
    final data = HiveModel().getData();
    if(data.isNotEmpty){
      setState(() {
        salary=data.last.salary.toString();
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.babyBlue,
      body:Column(
        
        children: [    
          MizanLabel(txt: AppStrings.masroufLabel,),
          const SizedBox(height: 20,),
          Container(width: 200,height: 100,
          decoration: BoxDecoration(
            color: AppColors.darkBlue,
            borderRadius: BorderRadius.circular(25)
          ),
          child: Center(
            child: Text(salary,
            style:const TextStyle(color: AppColors.white,
            fontSize: 20
            ),),
          ),),  

          // ListView.builder(
          //    scrollDirection: Axis.horizontal,
          //  shrinkWrap: true,
          //  itemCount: 3,
          //   itemBuilder: (context,index)=>CardWidget())
          
                // ElevatedButton(onPressed: (){
                //   for (var item in data) {
                //   print("Username: ${item.name}");
                //   print("Email: ${item.email}");                  
                //   print("salary:${item.salary}");
                //   print("balance: ${item.balance}");
                //   print("country ${item.country}");
                //   username = item.name; 
                //   print(HiveModel().box?.values);
                  

                // }
        
                // },
                //  child: Text(AppStrings.name)),
      
        //          ElevatedButton(onPressed: (){
        //           setState(() {
        //             // HiveModel().clearAllData();
                        // salary = "";   
                        // username = "";
        //             // لو عايزة امسح كل البيانات لكن بيفضل يعرض البيانات فى الاسم ويطلع طول القائمة صفر
      
        //   var emptyData = HiveModel().getData(); 
        //   print("List Length: ${emptyData.length}");
          
        // });
      
      
            
        //         },
        //          child: Text(AppStrings.email)),
      ],)
    );
  }
}