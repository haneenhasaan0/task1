import 'package:flutter/material.dart';

import '../app_style/app_style.dart';

void showToast(
    BuildContext context,
    String errorMsg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(10),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

      content: Row(
        children: [
          Icon( Icons.error,
            size: 20,
          ),
          Text(errorMsg,style: AppStyle.semiBold14White)
        ],
      ),
    ),
  );
}
