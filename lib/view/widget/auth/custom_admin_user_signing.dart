import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomAdminUserSigning extends StatelessWidget {
  final void Function() onTapAdminIsTrue;
  final String textAdmin;
  final bool changeAdminUserColorBool;
  final void Function() onTapAdminIsFalse;
  final String textUser;

  const CustomAdminUserSigning(
      {Key? key,
      required this.onTapAdminIsTrue,
      required this.textAdmin,
      required this.changeAdminUserColorBool,
      required this.onTapAdminIsFalse,
      required this.textUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: onTapAdminIsTrue,
            child: Text(
              textAdmin,
              style: TextStyle(
                fontSize: 16,
                color: changeAdminUserColorBool
                    ? AppColor.backgroundColor
                    : Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          GestureDetector(
            onTap: onTapAdminIsFalse,
            child: Text(
              textUser,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: changeAdminUserColorBool
                    ? Colors.black
                    : AppColor.backgroundColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
