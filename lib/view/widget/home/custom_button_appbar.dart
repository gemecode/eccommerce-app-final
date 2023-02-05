import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonText;
  final IconData iconData;
  final bool? active;
  const CustomButtonAppBar(
      {Key? key,
      required this.onPressed,
      required this.buttonText,
      required this.iconData,
      required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData, color: active == true ? AppColor.primaryColor : AppColor.gray2),
          Text(buttonText, style: TextStyle(color: active == true ? AppColor.primaryColor : AppColor.gray2)),
        ],
      ),
    );
  }
}
