import 'package:flutter/material.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/edit_personal_data.dart';
import 'package:mizan_app/presentation/widgets/logout_row.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({super.key});

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.babyBlue,
      body: Column(
        children: [
          const SizedBox(height: 50,),
          LogoutRow(),
           const SizedBox(height: 50,),
          EditPersonalData(),
          
        ],
      ),
    );
  }
}