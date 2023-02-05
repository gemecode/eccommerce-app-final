import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project/controller/user/mycart_controller.dart';
import 'package:final_project/controller/user/myfavorite_controller.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/translatedatabase.dart';
import 'package:final_project/data/model/mycart_model.dart';
import 'package:final_project/data/model/myfavorite_model.dart';
import 'package:final_project/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListCartItems extends GetView<MyCartController> {
  final MyCartModel itemsModel;
  // final bool active;
  const CustomListCartItems({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
                tag: "${itemsModel.itemsId}",
                child: CachedNetworkImage(
                  imageUrl: "${AppLink.imageItems}/${itemsModel.itemsImage}",
                  height: 100,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              width: 10,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${translateDatabase(itemsModel.itemsNameAr, itemsModel.itemsName)}",
                  style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "${itemsModel.itemsPrice} ${"500".tr}",
                  style: const TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "sans"),
                ),



              ],
            ),

            IconButton(
              onPressed: (){
                controller.deleteFromCart(itemsModel.cartId!);
              },
              icon: const Icon(
                Icons.delete_outline_outlined,
                color: AppColor.primaryColor,
              ),
            ),

            // Text("${itemsModel.itemsDesc}", textAlign: TextAlign.center,),

          ],
        ),
      ),
    );
  }
}
