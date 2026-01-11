import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';

class Qest extends StatelessWidget {
   
  final TextEditingController qestController;
  const Qest({super.key, required this.qestController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: qestController,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: AppStrings.qest,       
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              
              ), 
              validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppStrings.emptyField;
                  } 
                  return null;
                },  
    );
  }
}