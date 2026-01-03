import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  TextEditingController emailController=TextEditingController();

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