import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';

class Currency extends StatelessWidget {
  final TextEditingController currencyController;
  const Currency({super.key, required this.currencyController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        
        controller: currencyController,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.right,
        
        decoration: InputDecoration(
           labelText: AppStrings.entermoney,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
         validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.emptyField;
                    } 
                    return null;
                  },   
      ),
    );
  }
}