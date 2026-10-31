import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task1/core/app_colors/app_colors.dart';
import 'package:task1/core/app_routes/app_routes.dart';
import 'package:task1/core/app_style/app_style.dart';

import '../../../details_screen/presentation/screen/details_sreen.dart';
import '../../data/model/user_response.dart';

class Users extends StatelessWidget {
  const Users({super.key, required this.name, required this.email,required this.summary});

  final String name, email,summary;

  @override
  Widget build(BuildContext context) {
    final user = GoRouterState.of(context).extra as UserResponse;
    return InkWell(
      onTap: (){
        context.push(AppRoutes.detailsScreen,extra: user);      },
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: AppColors.lightGColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(summary, style: AppStyle.medium14Green),
            ),
          ),
          SizedBox(width: 14),
          Column(
            children: [
              Text(
                name,
                style: AppStyle.regular16Grey.copyWith(
                  color: AppColors.darkGreen,
                ),
              ),
              SizedBox(height: 8),
              Text(email, style: AppStyle.regular14Grey),
            ],
          ),
          Spacer(),
          Icon(
            Icons.arrow_right_rounded,
            size: 16,
            color: AppColors.greyColor,
          ),
        ],
      ),
    );
  }
}
