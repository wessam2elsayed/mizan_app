import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';


class Name extends StatelessWidget {
  
  final TextEditingController nameController;

  const Name({super.key,
   required this.nameController,});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
              controller: nameController,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                // hintText:  AppStrings.name,
                labelText: AppStrings.name,       
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              
              ), 
              validator: (value) {
                  if (value == null || value.isEmpty) {
                    return " من فضلك تأكد من صحة ادخال البيانات ";
                  } 
                },             
            );
  }
}