import 'package:flutter/material.dart';
import 'package:mizan_app/presentation/screens/home_screen.dart';
import 'package:mizan_app/presentation/screens/login_screen.dart';


abstract class AppRoutes {
  static const splashScreen='/slashScreen';
  static const homeScreen='/homeScreen';
  static const loginScreen='/loginScreen';

  static Route<dynamic> onGenerateRoute(RouteSettings settings){

    switch (settings.name){
       
     case homeScreen:
      return MaterialPageRoute(builder: (_)=>const HomeScreen()); 

     case loginScreen:
      return  MaterialPageRoute(builder: (_)=>const LoginScreen());

    }
    
    return MaterialPageRoute(
      builder: (_)=>Scaffold(
        body: Center(
          child: 
          Text("No route defined for ${settings.name}")),
      ));
  }
}