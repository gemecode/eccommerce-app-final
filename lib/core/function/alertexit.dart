import 'dart:io';

import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp(){
  Get.defaultDialog(
    title: "208".tr,
    middleText: "209".tr,
    actions: [
      ElevatedButton(onPressed: (){exit(0);}, style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryColor), child: Text("210".tr, style: const TextStyle(color: Colors.white))),
      ElevatedButton(onPressed: (){Get.back();}, style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryColor), child: Text("211".tr, style: const TextStyle(color: Colors.white))),
    ]
  );
  return Future.value(true);
}