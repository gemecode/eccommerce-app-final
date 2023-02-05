import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project/controller/user/myfavorite_controller.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/translatedatabase.dart';
import 'package:final_project/data/model/myfavorite_model.dart';
import 'package:final_project/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListFavoriteItems extends GetView<MyFavoriteController> {
  final MyFavoriteModel itemsModel;
  // final bool active;
  const CustomListFavoriteItems({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.goToProductDetailsPage(itemsModel);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                  tag: "${itemsModel.itemsId}",
                  child: CachedNetworkImage(
                    imageUrl: "${AppLink.imageItems}/${itemsModel.itemsImage}",
                    height: 250,
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "${translateDatabase(itemsModel.itemsNameAr, itemsModel.itemsName)}",
                style: const TextStyle(
                    color: AppColor.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Rating 3.5",
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 22,
                    child: Row(
                      children: [
                        ...List.generate(
                            5,
                                (index) => Icon(
                              Icons.star,
                              size: 15,
                            ))
                      ],
                    ),
                  )
                ],
              ),
              // Text("${itemsModel.itemsDesc}", textAlign: TextAlign.center,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${itemsModel.itemsPrice} \$",
                    style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "sans"),
                  ),
          IconButton(
              onPressed: (){
                controller.deleteFromFavorite(itemsModel.favoriteId!);
              },
              icon: Icon(
                Icons.delete_outline_outlined,
                color: AppColor.primaryColor,
              ),
          ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
