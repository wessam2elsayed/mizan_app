import 'package:flutter/material.dart';
import 'package:mizan_app/core/models/hive_model.dart';
import 'package:mizan_app/core/routes/app_routes.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/home_container.dart';
import 'package:mizan_app/presentation/widgets/mizan_label.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

   String username="";
  

  @override
  void initState() {
    super.initState();
    final data = HiveModel().getData();
    if(data.isNotEmpty){
      setState(() {
        username=data.last.name;
      });
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.babyBlue,
      body: SingleChildScrollView(
        child: Column(
        children: [
          MizanLabel(txt: "أهلا بك فى الميزان يا \n"
           " $username",),
          const HomeContainer(
            img: "assets/images/dolar.png",
             txt: "حساب تحويل العملات إلى  الدولار",
              route: AppRoutes.currencyConverter,),
          const HomeContainer(
            img: "assets/images/aqsat.jpg",
            txt: "عرض الأقساط ومواعيدها",
             route:AppRoutes.aqsat, ),
          const HomeContainer(
            img: "assets/images/masrouf.png",
             txt: "تنظيم المصروفات بالنسبة لدخلك الشهري",
              route: AppRoutes.masrouf,),
          const HomeContainer(
            img: "assets/images/data.jpg",
             txt: "البيانات الشخصية",
              route: AppRoutes.personalData,),   
        ],
      ),
      )
    );
  }
}