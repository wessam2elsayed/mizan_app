import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/add_quest.dart';
import 'package:mizan_app/presentation/widgets/mizan_label.dart';


class ShowQest extends StatelessWidget {
  final String qest;
  final String qestTime;
  final String qestNote;

  const ShowQest({super.key, required this.qest, required this.qestTime, required this.qestNote});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.babyBlue,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.blue,
        child: Icon(Icons.add,
      color: AppColors.white),
        onPressed: (){
          showDialog(context: context,
           builder: (context)=>AddQuest());
        },
        ),

        body: Column(children: [
           MizanLabel(txt: AppStrings.AqsatLabel),
        const SizedBox(height: 20,),

       DataTable(
         
          border: TableBorder.all(
            width: 3,         
            borderRadius: BorderRadius.circular(10)),

           
        
          columns: [
            DataColumn(label: Text(AppStrings.qestNote)),
            DataColumn(label: Text(AppStrings.qestTime)),
            DataColumn(label: Text(AppStrings.qest)),
          ],
           rows: [
            DataRow(cells: [
              DataCell(Text(qestNote)),
              DataCell(Text(qestTime)),
              DataCell(Text(qest)),

            ])
           ]),


        ],),
    );
  }
}