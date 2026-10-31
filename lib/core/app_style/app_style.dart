
import 'package:flutter/material.dart';
import 'package:task1/core/app_colors/app_colors.dart';
import 'package:task1/core/app_style/app_fonts.dart';

class AppStyle {
 static TextStyle semiBold40DarkGreen=TextStyle(
   fontFamily: AppFonts.fontFamily,
   fontWeight: FontWeight.w500,
   fontSize: 40,
   color: AppColors.darkGreen
 );
 static TextStyle regular14Grey=TextStyle(
   fontFamily: AppFonts.fontFamily,
   fontWeight: FontWeight.w400,
   fontSize: 14,
   color: AppColors.greyColor
 );
 static TextStyle regular16Grey=TextStyle(
   fontFamily: AppFonts.fontFamily,
   fontWeight: FontWeight.w600,
   fontSize: 16,
   color: AppColors.greyColor
 );
 static TextStyle medium14Green=TextStyle(
   fontFamily: AppFonts.fontFamily,
   fontWeight: FontWeight.w500,
   fontSize: 14,
   color: AppColors.greenColor
 );
 static TextStyle semiBold14White=TextStyle(
   fontFamily: AppFonts.fontFamily,
   fontWeight: FontWeight.w600,
   fontSize: 14,
   color: AppColors.whiteColor
 );

}