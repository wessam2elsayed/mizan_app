import 'package:flutter/material.dart';
import 'package:mizan_app/core/models/hive_model.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/card_widget.dart';
import 'package:mizan_app/presentation/widgets/masrouf_row.dart';
import 'package:mizan_app/presentation/widgets/mizan_label.dart';


class Masrouf extends StatefulWidget {
  const Masrouf({super.key});

  @override
  State<Masrouf> createState() => _MasroufState();
}

class _MasroufState extends State<Masrouf> {
  num salary=0;
  @override
  void initState() {
    super.initState();
    if (HiveModel.currentUser != null) {
      setState(() {
        salary = HiveModel.currentUser!.salary;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    num invest=salary*0.2;
    num valMasrouf=salary*0.3;
    num conMasrouf=salary*0.5;
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
            child: Text(salary.toString(),
            style:const TextStyle(color: AppColors.white,
            fontSize: 20
            ),),
          ),), 

           const SizedBox(height: 20,),
           Expanded(
             child: SingleChildScrollView(
              scrollDirection:  Axis.horizontal,
               child: Row(
                 children: [
                  const SizedBox(width: 20,),
                  CardWidget(
                    txt: AppStrings.invest, 
                    val: 0.2, 
                    percent: 20, 
                    masroufValue: invest, 
                    rows: [
                      MasroufRow(
                        txt: AppStrings.saves, 
                        icon: Icons.savings),
                      MasroufRow(
                        txt: AppStrings.debit, 
                        icon: Icons.money),
                      MasroufRow(
                        txt: AppStrings.emergency, 
                        icon: Icons.emergency)
                    ]),
                  
               
                  const SizedBox(width: 20,),
                  CardWidget(
                    txt: AppStrings.valMasrouf, 
                    val: 0.3, 
                    percent: 30, 
                    masroufValue: valMasrouf,
                     rows: [
                      MasroufRow(
                        txt: AppStrings.shopping,
                        icon: Icons.shopping_bag),
                      MasroufRow(
                        txt: AppStrings.fun, 
                        icon: Icons.shopping_cart),
                      MasroufRow(
                        txt: AppStrings.trips, 
                        icon: Icons.train),
                      MasroufRow(
                        txt: AppStrings.gifts, 
                        icon: Icons.card_giftcard)  
                     ],),
               
                  const SizedBox(width: 20,),
                   CardWidget(
                    txt:AppStrings.conMasrouf,
                     val: 0.5,
                      percent: 50, 
                      masroufValue: conMasrouf, 
                      rows: [
                         MasroufRow(
                       txt: AppStrings.bills,
                       icon: Icons.square,),
                      MasroufRow(
                       txt: AppStrings.education,
                       icon: Icons.book),
                      MasroufRow(
                       txt: AppStrings.healthcare,
                       icon: Icons.health_and_safety),
                      MasroufRow(
                       txt: AppStrings.transport,
                       icon: Icons.car_repair),
                      MasroufRow(
                       txt: AppStrings.call,
                       icon: Icons.phone)
                      ],),
               
                     const SizedBox(width: 20,),
                 ],
               ),
             ),
           ) ,        
               
      ],)
    );
  }
}