import 'package:final_project/controller/user/myfavorite_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/view/widget/custom_appbar_home.dart';
import 'package:final_project/view/widget/myfavorite/custom_list_favorite_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GetBuilder<MyFavoriteController>(
            builder: ((controller) =>
                ListView(children: [
                  CustomAppBar(
                    titleAppBar: "70".tr,
                    onPressedIconNotification: () {},
                    onPressedIconFavorite: () {
                      Get.toNamed(AppRoute.myFavorite);
                    },
                    onPressedSearch: () {},
                  ),

                  const SizedBox(height: 20),

                  HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.data.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return CustomListFavoriteItems(itemsModel: controller.data[index],);
                    },
                  ))

                ])
            )),
      ),
    );
  }
}
