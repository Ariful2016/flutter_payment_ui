import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';

class IconButtonWithText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final IconData icon;
  final double? iconSize;
  final Color? iconColor;
  final Color? backgroundColor;
  final Function()? onTap;
  const IconButtonWithText({Key? key,
    this.text,
    this.fontSize = 18,
    this.textColor = AppColor.mainColor,
    required this.icon,
    this.iconSize,
    this.iconColor ,
    this.backgroundColor = AppColor.mainColor,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Icon(icon, size: 30, color: iconColor,),
          ),
          text!= null? Text(
            text!,
            style: TextStyle(
              fontSize: 14,
              color: textColor
            ),
          ): Container()
        ],
      ),

    );
  }
}
