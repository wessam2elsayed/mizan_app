import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';

class Email extends StatelessWidget {
  final TextEditingController emailController;
  const Email({super.key,
   required this.emailController});

 

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              controller: emailController,
              // textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: AppStrings.email,       
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