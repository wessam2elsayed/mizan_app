import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mizan_app/core/strings/app_strings.dart';

class Balance extends StatefulWidget {
  final TextEditingController balaanceController;
  const Balance({super.key, required this.balaanceController});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  
   bool secureText=true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              controller:widget.balaanceController,
              obscureText: secureText,
              // textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: AppStrings.balance, 
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