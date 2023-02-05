import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomButtonLanguage extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  const CustomButtonLanguage({Key? key, required this.textButton, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: Colors.white,
        child: Text(textButton, style: const TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
