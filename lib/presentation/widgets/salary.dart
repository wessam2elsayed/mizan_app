import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';

class Salary extends StatefulWidget {
  const Salary({super.key});

  @override
  State<Salary> createState() => _SalaryState();
}

class _SalaryState extends State<Salary> {
  TextEditingController salaryController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              controller: salaryController,
              // textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: AppStrings.salary,       
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