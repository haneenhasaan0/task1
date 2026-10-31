import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task1/core/app_colors/app_colors.dart';
import 'package:task1/core/app_routes/app_routes.dart';
import 'package:task1/core/app_style/app_style.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({super.key, required this.text, required this.detail,required this.icon});

  final String text, detail;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Icon(icon,size: 14,color: AppColors.greyColor,),
        SizedBox(width: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: AppStyle.regular16Grey,
            ),
            SizedBox(height: 8),
            Text(detail, style: AppStyle.medium14Green),
          ],
        ),
        Spacer(),
        Icon(
          Icons.arrow_right_rounded,
          size: 24,
          color: AppColors.greyColor,
        ),
      ],
    );
  }
}
