import 'package:flutter/cupertino.dart';
import 'package:flutter_payment_app/component/colors.dart';

class LargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final String text;
  final Color? textColor;
  final Function()? onTap;
  final bool? isBorder;
  const LargeButton({Key? key,
    this.backgroundColor = AppColor.mainColor,
    required this.text,
    this.textColor,
    this.onTap,
    this.isBorder
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 40, right: 40),
        width: MediaQuery.of(context).size.width-80 ,
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
            color: AppColor.mainColor
          )
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),

    );
  }
}
