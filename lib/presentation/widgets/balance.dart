import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  TextEditingController balaanceController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              controller: balaanceController,
              // textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: AppStrings.balance,       
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