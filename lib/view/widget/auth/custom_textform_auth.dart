// ignore_for_file: must_be_immutable

import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hint;
  final IconData? icon;
  final Widget? suffix;
  final bool? obscureText;
  final TextEditingController? myController;
  final String? Function(String?)? validate;
  final String? Function(String?)? onClick;
  final bool? isNumber;


    const CustomTextFormAuth({super.key,
      required this.hint,
      this.icon,
      this.suffix,
      this.obscureText,
      required this.myController,
      this.validate,
      this.onClick,
      this.isNumber
   });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: isNumber == true ?const TextInputType.numberWithOptions(decimal: true) : TextInputType.text,
      validator: validate,
      cursorColor: AppColor.primaryColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.black,),
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primaryColor,),
          borderRadius: BorderRadius.circular(20.0),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primaryColor,),
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: Icon(icon, color: AppColor.primaryColor,),
        suffixIcon: suffix,
        hintText: hint,

      ),
      obscureText: obscureText!,
      controller: myController,
      onSaved: onClick,

    );
  }
}
