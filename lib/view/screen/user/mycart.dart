import 'package:final_project/controller/user/mycart_controller.dart';
import 'package:final_project/controller/user/myfavorite_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/view/widget/custom_appbar_home.dart';
import 'package:final_project/view/widget/mycart/custom_list_cart_items.dart';
import 'package:final_project/view/widget/myfavorite/custom_list_favorite_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyCartController());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GetBuilder<MyCartController>(
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
                      widget: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CustomListCartItems(itemsModel: controller.data[index],);
                        },
                      ))

                ])
            )),
      ),

      bottomNavigationBar:  Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 40,
          child: MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: AppColor.secondColor,
            onPressed: () {

              Get.toNamed(AppRoute.myOrder);

              // if (controllerCart.isCart[controller.itemsModel.itemsId] == 1) {
              //   controllerCart.setCart(controller.itemsModel.itemsId, 0);
              //   controllerCart.removeCart(controller.itemsModel.itemsId!.toString());
              // } else {
              //   controllerCart.setCart(controller.itemsModel.itemsId, 1);
              //   controllerCart.addCart(controller.itemsModel.itemsId!.toString());
              // }

              // setState(() {});

            },
            child: Text(


                "86".tr,

              // controllerCart.isCart[controller.itemsModel.itemsId] == 1
              //     ? "Remove From Cart"
              //     : "Add To Cart",

              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
  }
}
