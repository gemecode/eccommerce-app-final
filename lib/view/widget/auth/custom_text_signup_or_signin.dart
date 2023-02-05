import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final void Function() onTap;
  const CustomTextSignUpOrSignIn(
      {Key? key,
      required this.textOne,
      required this.textTwo,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne,
          style: const TextStyle(color: AppColor.primaryColor, fontSize: 16.0),
        ),
        InkWell(
            onTap: onTap,
            child: Text(
              textTwo,
              style: const TextStyle(fontSize: 16.0),
            )),
      ],
    );
  }
}
