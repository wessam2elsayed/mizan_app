import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.babyBlue,
      body: SingleChildScrollView(
        child: Column(
        children: [
          MizanLabel(),
          HomeContainer(
            img: "assets/images/dolar.png",
             txt: "حساب تحويل العملات إلى  الدولار",
              route: AppRoutes.currencyConverter,),
          HomeContainer(
            img: "assets/images/aqsat.jpg",
            txt: "عرض الأقساط ومواعيدها",
             route:AppRoutes.aqsat, ),
          HomeContainer(
            img: "assets/images/masrouf.png",
             txt: "تنظيم المصروفات بالنسبة لدخلك الشهري",
              route: AppRoutes.masrouf,),
          HomeContainer(
            img: "assets/images/data.jpg",
             txt: "البيانات الشخصية",
              route: AppRoutes.personalData,),   
        ],
      ),
      )
    );
  }
}