import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/view/screen/admin/add_product.dart';
import 'package:final_project/view/screen/admin/edit_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("90".tr, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          // ElevatedButton(
          //     onPressed: (){
          //       Navigator.pushNamed(context, AddProduct.id);
          //     },
          //   style: ElevatedButton.styleFrom(backgroundColor: AppColor.btnAdminActiveColor),
          //     child: Text(
          //       '91'.tr,
          //       // style: TextStyle(color: kAdminColor),
          //     ),
          //
          // ),
          // ElevatedButton(
          //   onPressed: (){
          //     Navigator.pushNamed(context, EditProduct.id);
          //   },
          //   style: ElevatedButton.styleFrom(backgroundColor: AppColor.btnAdminActiveColor),
          //   child: Text(
          //     '92'.tr,
          //     // style: TextStyle(color: kAdminColor),
          //
          //   ),
          //
          // ),

          ElevatedButton(
            onPressed: (){
              Get.toNamed(AppRoute.adminOrdersScreen);
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColor.btnAdminActiveColor),
            child: Text(
              '93'.tr,
            ),),
        ],
      ),
    );
  }
}
