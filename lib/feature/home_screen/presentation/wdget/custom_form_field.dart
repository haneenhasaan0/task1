import 'package:flutter/material.dart';
import 'package:task1/core/app_colors/app_colors.dart';
import 'package:task1/core/app_style/app_style.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController? controller;

  const CustomFormField({
    super.key,
    this.fillColor,
    this.controller,
    this.borderSide,
    this.style,
    this.hintStyle,
    this.onChanged,
  });

  final BorderSide? borderSide;
  final Color? fillColor;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final ValueChanged<String>? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style:AppStyle.regular16Grey.copyWith(color: Colors.black) ,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: AppColors.whiteColor,
        filled: true,
        hintStyle: AppStyle.regular14Grey,
        hintText: "Search by name or email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:  BorderSide(color: AppColors.lightGColor),

        ),
        prefixIcon: Icon(Icons.search,size: 24,color: AppColors.greyColor,),
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: AppColors.lightGColor),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: AppColors.lightGColor),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
