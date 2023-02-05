import 'package:final_project/controller/user/productdetails_controller.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubItemsColorList extends GetView<ProductDetailsControllerImp> {
  const SubItemsColorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          controller.subItemsColor.length,
              (index) => Container(
            margin: EdgeInsets.only(
              right: 10,
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 5),
            height: 60,
            width: 90,
            decoration: BoxDecoration(
              color:
              controller.subItemsColor[index]['active'] == "1"
                  ? AppColor.fourthColor
                  : Colors.white,
              border: Border.all(color: AppColor.fourthColor),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              controller.subItemsColor[index]['name'],
              style: TextStyle(
                  color: controller.subItemsColor[index]
                  ['active'] ==
                      "1"
                      ? Colors.white
                      : AppColor.fourthColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
