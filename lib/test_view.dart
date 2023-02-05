import 'package:final_project/controller/test_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text("Title"),
      ),
      body: GetBuilder<TestController>(
        init: TestController(),
        builder: (controller) {
          return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) {
                    return Text("${controller.data}");
                  }));
        },
      ),
    );
  }
}
