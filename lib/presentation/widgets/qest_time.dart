import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';

class QestTime extends StatelessWidget {
   final TextEditingController qestTimeController;
  const QestTime({super.key, required this.qestTimeController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: qestTimeController,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: AppStrings.qestTime,       
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