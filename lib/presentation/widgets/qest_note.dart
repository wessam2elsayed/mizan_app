import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';

class QestNote extends StatelessWidget {
  final TextEditingController qestNoteController;
  const QestNote({super.key, required this.qestNoteController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: qestNoteController,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: AppStrings.qestNote,       
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