import 'package:final_project/controller/user/homepage_controller.dart';
import 'package:final_project/controller/user/itemspage_controller.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/translatedatabase.dart';
import 'package:final_project/data/model/items_model.dart';
import 'package:final_project/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItemsHome extends GetView<HomeControllerImp> {


  const CustomListItemsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: controller.items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 7,
            mainAxisSpacing: 7,
            crossAxisCount: 3,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return Items(
              itemsModel: ItemsModel.fromJson(controller.items[index]),
              index: index,
            );
          });
  }
}

class Items extends StatelessWidget {
  final ItemsModel itemsModel;
  final int index;
  const Items({Key? key, required this.itemsModel, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return InkWell(
      onTap: () {
        controller.goToProductDetailsPage(itemsModel, index);
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Hero(
              tag:"${itemsModel.itemsId}",
              child: Image.network(
                "${AppLink.imageItems}/${itemsModel.itemsImage}",
                // "${itemsModel.itemsImage}",
                height: 300,
                width: 300,
                // fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: AppColor.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20)),
            height: 380,
            width: 380,
          ),
          Positioned(
              top: 5,
              left: controller.lang  == "en" ? 15 : null,
              right: controller.lang  == "ar" ? 15 : null,
              child: Text(
                "${translateDatabase(itemsModel.itemsNameAr, itemsModel.itemsName)}",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              )),
        ],
      ),
    );
  }
}
