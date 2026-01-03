import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mizan_app/core/strings/app_strings.dart';

class Salary extends StatefulWidget {
  const Salary({super.key});

  @override
  State<Salary> createState() => _SalaryState();
}

class _SalaryState extends State<Salary> {
  TextEditingController salaryController=TextEditingController();
  bool secureText=true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              controller: salaryController,
               obscureText: secureText,
              textAlign: TextAlign.right,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: AppStrings.salary, 
                prefixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      secureText=!secureText;
                    });
                  },
                 icon: Icon(secureText?
                 Icons.visibility
                 :Icons.visibility_off)),   

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),              
              ), 
             inputFormatters: [
              FilteringTextInputFormatter.digitsOnly
             ],   
              validator: (value) {
                  if (value == null || value.isEmpty) {
                    return " من فضلك تأكد من صحة ادخال البيانات ";
                  } 
                },         
            );
  }
}