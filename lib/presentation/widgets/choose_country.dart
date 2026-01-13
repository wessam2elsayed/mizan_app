import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';

class ChooseCountry extends StatefulWidget {

  final Function(String?) onCountryChanged;

  const ChooseCountry({
    super.key,
   required this.onCountryChanged, });

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
    return DropdownButton(
      dropdownColor: AppColors.lightBlue,
      isExpanded: true,
      menuWidth: 200,
      alignment: AlignmentDirectional.centerEnd,
      borderRadius: BorderRadius.circular(10),
      hint: Text( AppStrings.country,
       style:const TextStyle(
        fontSize: 20,
          color: AppColors.black,
        fontWeight: FontWeight.w500,
        fontFamily: "ReadexPro",),
        ),
      value: selectedCountry,
      onChanged: (value) {
        setState(() {
          selectedCountry = value;
        });
        widget.onCountryChanged(value); 
      },
      items: countries.map((country){
        return DropdownMenuItem(
          alignment: AlignmentDirectional.centerStart,
        value: country,
        child:Text(country,
        style:const TextStyle(
          fontSize: 20,
          color: AppColors.black,
          fontFamily: "Readexpro",),
        ),
        );
      }).toList(),
  
    );
    
       
  }
}