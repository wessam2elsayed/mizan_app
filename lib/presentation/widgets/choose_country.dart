import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';

class ChooseCountry extends StatefulWidget {
  const ChooseCountry({super.key, });

  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {

  String? selectedCountry;

  List<String> countries = [
  'مصر',
  'السعودية',
  'الامارات',
  'البحرين',
  'الكويت',
  'قطر',
  'تونس',
  'سوريا',
  'الجزائر',
  'فلسطين',
  'عُمان',
  'السودان',
  'لبنان',
  'ليبيا',
  'موريتانيا',
  'العراق',
  'الاردن',
  'الصومال',
  'جيبوتى',
  'جزر القمر',
  'المغرب',
];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      dropdownColor: AppColors.lightGreen,
      alignment: Alignment.centerRight,
      borderRadius: BorderRadius.circular(10),
      
      decoration: InputDecoration(
        labelText: AppStrings.country,
        labelStyle: TextStyle(
          fontFamily: "ReadexPro",
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.grey)
        ),
        enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: AppColors.green),
                    ),
      ),
    
      value: selectedCountry,
      items: countries.map((country){
        return DropdownMenuItem<String>(
        value: country,
        child:Text(country)
        );
      }).toList(),
      
       onChanged: (value){
        setState(() {
          selectedCountry = value;
        });
        
    
       });
  }
}