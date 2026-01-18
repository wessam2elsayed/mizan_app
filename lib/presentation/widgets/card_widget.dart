import 'package:flutter/material.dart';
import 'package:mizan_app/core/theme/app_colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100,
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.babyBlue,
        borderRadius: BorderRadius.circular(10)

      ),

      
    );
  }
}