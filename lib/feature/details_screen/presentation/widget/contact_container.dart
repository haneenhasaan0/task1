import 'package:flutter/material.dart';
import 'package:task1/core/app_style/app_style.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer({super.key,required this.color,required this.textColor,required this.text,required this.icon});
  final Color color,textColor;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: color,
        borderRadius: BorderRadius.circular(16)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Row(
              children: [
                Icon(icon,size: 16,color: textColor,),
                SizedBox(width: 12,),
                Text(text,style: AppStyle.semiBold14White.copyWith(color: textColor),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
