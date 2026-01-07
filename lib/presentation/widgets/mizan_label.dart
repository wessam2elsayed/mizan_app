import 'package:flutter/material.dart';
import 'package:mizan_app/core/models/hive_model.dart';
import 'package:mizan_app/core/theme/app_colors.dart';

class MizanLabel extends StatefulWidget {
  const MizanLabel({super.key});

  @override
  State<MizanLabel> createState() => _MizanLabelState();
}

class _MizanLabelState extends State<MizanLabel> {
final String username="";
  

  @override
  void initState() {
    super.initState();
    final data = HiveModel().getData();
    if(data.isNotEmpty){
      setState(() {
        username!=data[0].name;
      });
    }

  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("ميزان",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontFamily: "ReemKufi"
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Container(width: 250,height: 100,
            decoration: BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              )
            ),
            
            child: Center(child: Text("أهلا بك فى الميزان يا \n"
           " $username",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontFamily: "ReadexPro",
            ),)),),
            const SizedBox(width: 10,),
      
            CircleAvatar(radius: 30,
            backgroundColor: AppColors.black,
            backgroundImage: AssetImage("assets/images/logo (2).png"),),
          ],)
        ],
      ),
    ) ;

  }
}