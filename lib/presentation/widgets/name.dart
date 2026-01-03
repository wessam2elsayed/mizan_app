import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';


class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  TextEditingController nameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              controller: nameController,
              // textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
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