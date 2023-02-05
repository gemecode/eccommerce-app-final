import 'package:final_project/controller/user/cart_controller.dart';
import 'package:final_project/controller/user/productdetails_controller.dart';
import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/translatedatabase.dart';
import 'package:final_project/data/model/items_model.dart';
import 'package:final_project/view/widget/product_details/price_and_count.dart';
import 'package:final_project/view/widget/product_details/sub_items_color_list.dart';
import 'package:final_project/view/widget/product_details/top_page_product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  final bool active = true;

  @override
  Widget build(BuildContext context) {
    Get.put(ProductDetailsControllerImp());
    CartController controllerCart = Get.put(CartController());
    // ProductDetailsControllerImp controller = Get.put(ProductDetailsControllerImp());

    // controllerFav.isFavorite[controller.data[index]['items_id']] = controller.data[index]['favorite'];
    // controllerCart.isCart[controller.itemsModel.itemsId] = controller.data[controller.itemsModel.cart!.toInt()]['cart'];
    // controllerCart.isCart[controller.data[0]['items_id']] = controller.data[0]['cart'];
    // controllerCart.isCart[controller.data[controller.itemsModel.itemsId!.toInt()]['items_id']] = controller.data[controller.itemsModel.itemsId!.toInt()]['cart'];
    // controllerCart.isCart[controller.itemsModel.itemsId] = controller.itemsModel.cart;
    // controllerCart.isCart[controller.data[controller.index]['items_id']] = controller.data[controller.index]['cart'];

    return Scaffold(
      body: ListView(
        children: [
          const TopProductPageDetails(),
          const SizedBox(
            height: 530,
          ),
          GetBuilder<ProductDetailsControllerImp>(
            builder: (controller) => Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${translateDatabase(controller.itemsModel.itemsNameAr, controller.itemsModel.itemsName)}",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(color: AppColor.fourthColor),
                  ),
                  const SizedBox(height: 10),

                  // PriceAndCountItems(
                  //     onAdd: () {}, onRemove: () {}, count: "1", price: "${controller.itemsModel.itemsPrice}"),

                  PriceAndCountItems(
                      price: "${controller.itemsModel.itemsPrice} ${"500".tr}"),

                  const SizedBox(height: 10),

                  Text(
                      "${translateDatabase(controller.itemsModel.itemsDescAr ,controller.itemsModel.itemsDesc)}",
                      style: Theme.of(context).textTheme.headlineSmall!),

                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                          "84".tr,
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold)),
                      Text(
                          "${controller.itemsModel.itemsDiscount} ${"500".tr}",
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColor.primaryColor)),
                    ],
                  ),


                  // Text(
                  //   "Color",
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .headlineLarge!
                  //       .copyWith(color: AppColor.fourthColor),
                  // ),
                  //
                  // const SizedBox(height: 10),
                  //
                  // const SubItemsColorList(),
                  //
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: GetBuilder<ProductDetailsControllerImp>(
        builder: (controller) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 40,
          child: MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: AppColor.secondColor,
            onPressed: () {


              // if (controllerCart.isCart[controller.itemsModel.itemsId] == 1) {
              //   controllerCart.setCart(controller.itemsModel.itemsId, 0);
              //   controller.myServices.sharedPreferences.setInt("added" , 0);
              //   controllerCart.removeCart(controller.itemsModel.itemsId!.toString());
              // } else {
              //   controllerCart.setCart(controller.itemsModel.itemsId, 1);
              //   controller.myServices.sharedPreferences.setInt("added" , 0);
              //   controllerCart.addCart(controller.itemsModel.itemsId!.toString());
              // }
              // setState(() {});

              controllerCart.addCart(controller.itemsModel.itemsId!.toString());



            },


            child: Text(
              "85".tr,

              // controllerCart.isCart[controller.itemsModel.itemsId] == 1
              //     ? "Remove From Cart"
              //     : "Add To Cart",

              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
