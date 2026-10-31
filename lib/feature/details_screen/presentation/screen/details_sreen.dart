import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task1/core/app_colors/app_colors.dart';
import 'package:task1/core/app_style/app_style.dart';
import 'package:task1/feature/details_screen/presentation/widget/contact_container.dart';
import 'package:task1/feature/details_screen/presentation/widget/contact_details.dart';
import 'package:task1/feature/home_screen/data/model/user_response.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key,required this.user});
 final UserResponse user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back, color: AppColors.greenColor, size: 16),
        ),
        title: Text("User Details", style: AppStyle.medium14Green),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: AppColors.lightGColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "LG",
                    style: AppStyle.medium14Green.copyWith(fontSize: 24),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(
                user.name,
                style: AppStyle.semiBold40DarkGreen.copyWith(fontSize: 24),
              ),
              SizedBox(height: 8),
              Text(user.email, style: AppStyle.regular16Grey),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContactContainer(
                    color: AppColors.greenColor,
                    icon: Icons.phone,
                    text: "Call",
                    textColor: AppColors.whiteColor,
                  ),
                  SizedBox(width: 4),
                  ContactContainer(
                    color: AppColors.whiteColor,
                    icon: Icons.email_outlined,
                    text: "Email",
                    textColor: AppColors.greenColor,
                  ),
                ],
              ),

              SizedBox(height: 32),
              Text("Contact", style: AppStyle.regular16Grey),
              SizedBox(height: 24),
              ContactDetails(
                text: "email",
                detail: user.email,
                icon: Icons.email_outlined,
              ),
              Divider(color: AppColors.greyColor, indent: 8, endIndent: 8),
              ContactDetails(
                text: "phone",
                detail: user.phone,
                icon: Icons.phone,
              ),
              Divider(color: AppColors.greyColor, indent: 8, endIndent: 8),
              ContactDetails(
                text: "website",
                detail: user.website,
                icon: Icons.web,
              ),

              Divider(color: AppColors.greyColor, indent: 8, endIndent: 8),

      SizedBox(height: 32),
              Text("Company", style: AppStyle.regular16Grey),
              SizedBox(height: 24),
              ContactDetails(
                text:user.company.name,
                detail: user.company.bs,
                icon: Icons.location_city,
              ),
              Divider(color: AppColors.greyColor, indent: 8, endIndent: 8),
              ContactDetails(
                text: "Address",
                detail: user.address.city + user.address.city,
                icon: Icons.location_on_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
