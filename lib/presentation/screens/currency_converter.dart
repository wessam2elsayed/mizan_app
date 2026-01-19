import 'package:flutter/material.dart';
import 'package:mizan_app/core/strings/app_strings.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/convert_buttom.dart';
import 'package:mizan_app/presentation/widgets/currency.dart';
import 'package:mizan_app/presentation/widgets/mizan_label.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {

  String? selectedCurrency;
  final currencyController=TextEditingController();
    final _formKey = GlobalKey<FormState>();

   double currencyResult=0.0;

  List<String> currencies=[
    'Egypt (EGP)',
  'Saudi Arabia (SAR)',
  'UAE (AED)',
  'Bahrain (BHD)',
  'Kuwait (KWD)',
  'Qatar (QAR)',
  'Tunisia (TND)',
  'Syria (SYP)',
  'Algeria (DZD)',
  'Palestine (ILS)',
  'Oman (OMR)',
  'Sudan (SDG)',
  'Lebanon (LBP)',
  'Libya (LYD)',
  'Mauritania (MRU)',
  'Iraq (IQD)',
  'Jordan (JOD)',
  'Somalia (SOS)',
  'Djibouti (DJF)',
  'Comoros (KMF)',
  'Morocco (MAD)',
  'Germany (EUR)',
  'Japan (JPY)',
  'England (GBP)',
  'Switzerland (CHF)',
  'Australia (AUD)',
  ];

  Map<String, double> moneyFelow = {
  'Egypt (EGP)': 48.44,
  'Saudi Arabia (SAR)': 3.75,
  'UAE (AED)': 3.67,
  'Bahrain (BHD)': 0.3770,
  'Kuwait (KWD)': 0.31,
  'Qatar (QAR)': 3.65,
  'Tunisia (TND)': 3.04,
  'Syria (SYP)': 14750,
  'Algeria (DZD)': 132.50,
  'Palestine (ILS)': 3.65,
  'Oman (OMR)': 0.39,
  'Sudan (SDG)': 601.50,
  'Lebanon (LBP)': 89500.00,
  'Libya (LYD)': 4.76,
  'Mauritania (MRU)': 39.73,
  'Iraq (IQD)': 1310.00,
  'Jordan (JOD)': 0.71,
  'Somalia (SOS)': 571,
  'Djibouti (DJF)': 177.94,
  'Comoros (KMF)': 443.55,
  'Morocco (MAD)': 9.72,
  'Germany (EUR)': 0.89,
  'Japan (JPY)': 143.28,
  'England (GBP)': 1.4847,
  'Switzerland (CHF)': 0.8435,
  'Australia (AUD)': 1.48,
};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: AppColors.babyBlue,
body: SingleChildScrollView(
  child: Form(
     key: _formKey,
    child: Column(children: [
    
      MizanLabel(txt:
       AppStrings.currencyConverter),
    
       Row(
         children: [
           DropdownButton( 
             dropdownColor: AppColors.lightBlue,
              menuWidth: 200,
              alignment: AlignmentDirectional.centerEnd,
              borderRadius: BorderRadius.circular(10),
           
              value: selectedCurrency,
            items: currencies.map((currency) {
              return DropdownMenuItem(
                value: currency,
                child:Text(currency,
                style:const TextStyle(
                  fontSize: 15,
                  color: AppColors.black,
                  fontFamily: "Readexpro",),
                ),
              );
            }).toList(),
             onChanged: (value){
              setState(() {
                selectedCurrency=value;
              });
             }),
       
             Text(AppStrings.chooseCurrency,
             style:const TextStyle(
                fontSize: 15,
                  color: AppColors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "ReadexPro",),),
         ],
       ),
      //  const SizedBox(height: 10,),
    
       Currency(currencyController: currencyController),
    
       ConvertButtom(onPressed: () { 
        if(_formKey.currentState!.validate()){
          setState(() {
            currencyResult= double.parse(currencyController.text) / moneyFelow[selectedCurrency]!;
            print(currencyResult);
          });
        }
       }
        ),
      //  const SizedBox(height: 10,),
    
       Container(
        width: 300,
       height: 200,
       decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(20),
      
       ),
       
       child: Text("$selectedCurrency! (${currencyController.text}) = $currencyResult USD",
       textAlign: TextAlign.center,
       style:const TextStyle(
        color: AppColors.white,
        fontSize: 25,
        fontFamily: "ReadexPro",),
       ),
       )
       
    ],),
  ),
),

    );
  }
}

