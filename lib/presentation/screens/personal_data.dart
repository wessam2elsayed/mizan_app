import 'package:flutter/material.dart';
import 'package:mizan_app/core/theme/app_colors.dart';
import 'package:mizan_app/presentation/widgets/personal_data_container.dart';
import 'package:mizan_app/presentation/widgets/logout_row.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({super.key});

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.babyBlue,
      body: SingleChildScrollView(
        child: Column(
        children: [
           SizedBox(height: 50,),
          LogoutRow(),
            SizedBox(height: 50,),
          PersonalDataContainer(),
          
        ],
      ),
      )
    );
  }
}