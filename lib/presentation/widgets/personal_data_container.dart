import 'package:flutter/material.dart';
import 'package:mizan_app/core/models/hive_model.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/circle_text_column.dart';
import 'package:mizan_app/presentation/widgets/edit_personal_data.dart';

class PersonalDataContainer extends StatefulWidget {
  const PersonalDataContainer({super.key});

  @override
  State<PersonalDataContainer> createState() => _EditPersonalDataState();
}

class _EditPersonalDataState extends State<PersonalDataContainer> {
   String username="";
   String email="";
   String salary="";
   String balance="";
   String selectedCountry="";

   final HiveModel hiveModel = HiveModel();

  void refreshData() {
  if (HiveModel.currentUser != null) {
    setState(() {
      username = HiveModel.currentUser!.name;
      email = HiveModel.currentUser!.email;
      salary = HiveModel.currentUser!.salary.toString();
      balance = HiveModel.currentUser!.balance.toString();
      selectedCountry = HiveModel.currentUser!.country;
    });
  }
}

  
  @override   
  void initState() {
    super.initState();
    refreshData();

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            decoration: BoxDecoration(
              color: AppColors.lightBlue,
             borderRadius: BorderRadius.circular(20),),
            
          ),
        ),
         Positioned(
           top: -25,
           left: MediaQuery.of(context).size.width/2-50,
           child:const CircleAvatar(
                radius: 58,
                backgroundColor: AppColors.lightBlue,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/slogan.gif"),
                  radius: 50,
                  backgroundColor: AppColors.white,
                ),
              ),
         ),
       Positioned(
            top: 100,
            left: 40,
            right: 40,
         child: Column(    
              children: [
               
              Text(username,
              style:const TextStyle(
                fontSize: 20,
                color: AppColors.black
              ),),
              const SizedBox(height: 20,),
              Text(email,
              style:const TextStyle(
                fontSize: 20,
                color: AppColors.black
              ),),
              const SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blue),
                onPressed: (){},
               child: Text(selectedCountry,
              style:const TextStyle(
                fontSize: 20,
                color: AppColors.white
              ),
              ),
              ),
              const SizedBox(height: 20,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleTextColumn(bal: salary, txt: AppStrings.salary,),
                
                CircleTextColumn(bal: balance, txt: AppStrings.balance,)
                  
              ],),
               const SizedBox(height: 20,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blue),
                onPressed: ()async{
                await showDialog(context: context,
                  builder: (context)=>const EditPersonalData()
                  
                 );
                 refreshData();
                },
               child: Text(AppStrings.edit,
              style:const TextStyle(
                fontSize: 20,
                color: AppColors.white
              ),
              ),
              ),
              ],
            ),
       ),
          
          
      
      ],
        
      ),
    );
  }
}