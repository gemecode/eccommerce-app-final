import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project/controller/user/productdetails_controller.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopProductPageDetails extends GetView<ProductDetailsControllerImp> {
  const TopProductPageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 180,
          decoration: const BoxDecoration(
            color: AppColor.secondColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
          ),
        ),
        Positioned(
            top: 220.0,
            right: 20,
            left: 20,
            // right: Get.width/20,
            // left: Get.width/20,
            child: Hero(
                tag: "${controller.itemsModel.itemsId}",
                child: CachedNetworkImage(
                  imageUrl:
                  "${AppLink.imageItems}/${controller.itemsModel.itemsImage!}",
                  height: 450,
                )) //fit: BoxFit.fill
        )
      ],
    );
  }
}
