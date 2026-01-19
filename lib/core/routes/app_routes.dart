import 'package:flutter/material.dart';
import 'package:mizan_app/presentation/screens/aqsat.dart';
import 'package:mizan_app/presentation/screens/currency_converter.dart';
import 'package:mizan_app/presentation/screens/home_screen.dart';
import 'package:mizan_app/presentation/screens/login_screen.dart';
import 'package:mizan_app/presentation/screens/masrouf.dart';
import 'package:mizan_app/presentation/screens/personal_data.dart';
import 'package:mizan_app/presentation/screens/show_qest.dart';
// import 'package:mizan_app/presentation/screens/show_qest.dart';
import 'package:mizan_app/presentation/screens/splash_screen.dart';



abstract class AppRoutes {
  static const splashScreen='/slashScreen';
  static const homeScreen='/homeScreen';
  static const loginScreen='/loginScreen';
  static const currencyConverter="/currencyConverter";
  static const aqsat="/aqsat";
  static const masrouf="/masrouf";
  static const personalData="/personalData";
  static const showqest="/showQest";

  static Route<dynamic> onGenerateRoute(RouteSettings settings){

    switch (settings.name){

      case splashScreen:
      return MaterialPageRoute(builder: (_)=>const SplashScreen());
       
     case homeScreen:
      return MaterialPageRoute(builder: (_)=>const HomeScreen()); 

     case loginScreen:
      return  MaterialPageRoute(builder: (_)=>const LoginScreen());

      case currencyConverter:
      return  MaterialPageRoute(builder: (_)=>const CurrencyConverter());

      case aqsat:
      return  MaterialPageRoute(builder: (_)=>const Aqsat());

      case masrouf:
      return  MaterialPageRoute(builder: (_)=>const Masrouf());

      case personalData:
      return  MaterialPageRoute(builder: (_)=>const PersonalData());

      case showqest:
      return MaterialPageRoute(builder: (_)=>const ShowQest(qest: '', qestTime: '', qestNote: '',));

    }
    
    return MaterialPageRoute(
      builder: (_)=>Scaffold(
        body: Center(
          child: 
          Text("No route defined for ${settings.name}")),
      ));
  }
}