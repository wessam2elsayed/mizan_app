import 'package:flutter/material.dart';
// import 'package:mizan_app/core/routes/app_routes.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/screens/show_qest.dart';
import 'package:mizan_app/presentation/widgets/qest.dart';
import 'package:mizan_app/presentation/widgets/qest_note.dart';
import 'package:mizan_app/presentation/widgets/qest_time.dart';

class AddQuest extends StatefulWidget {
  //  final num qest;
  //  final num qestTime;
  //  final String qestNote;
  const AddQuest({super.key});

  @override
  State<AddQuest> createState() => _AddQuestState();
}

class _AddQuestState extends State<AddQuest> {

  final _formKey = GlobalKey<FormState>();
    final qestController = TextEditingController();
    final qestTimeController = TextEditingController();
     final qestNoteController = TextEditingController();

     @override
     void dispose() {

     qestController.dispose();
     qestTimeController.dispose();
     qestNoteController.dispose();
     super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Form(
        key: _formKey,
        child: Column(children: [
          Text(AppStrings.addQest,
          style: TextStyle(
              fontSize: 20,
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "ReadexPro",
          ),),
          const SizedBox(height: 20,),
          Qest(qestController: qestController),
           const SizedBox(height: 20,),
           QestTime(qestTimeController: qestTimeController),
              const SizedBox(height: 20,),
              QestNote(qestNoteController: qestNoteController),
              const SizedBox(height: 20,),
              Row(children: [
                ElevatedButton(
                  onPressed: (){
                    String qest=qestController.text;
                    String qestTime=qestTimeController.text;
                    String qestNote=qestNoteController.text;
                    

                    // print("$qestController.text");

                    Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>
                     ShowQest(qest: qest,
                      qestTime: qestTime,
                       qestNote: qestNote)));
                  },
                   child: Text(AppStrings.add,
                             style: TextStyle(
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
                               style: TextStyle(
                          fontSize: 15,
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "ReadexPro",),)),
              ],)
        ],)),
    );
  }
}