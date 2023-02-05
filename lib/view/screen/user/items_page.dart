import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project/controller/user/favorite_controller.dart';
import 'package:final_project/controller/user/itemspage_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/data/model/items_model.dart';
import 'package:final_project/linkapi.dart';
import 'package:final_project/view/widget/custom_appbar_home.dart';
import 'package:final_project/view/widget/items/custom_list_categories_items.dart';
import 'package:final_project/view/widget/items/custom_list_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar(
            titleAppBar: "70".tr,
            onPressedIconNotification: (){},
            onPressedIconFavorite: (){
              Get.toNamed(AppRoute.myFavorite);
            },
            onPressedSearch: (){},
          ),
          const SizedBox(height: 20),
          const CustomListCategoriesItems(),
          GetBuilder<ItemsControllerImp>(
              builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.data.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.7),
                      itemBuilder: (BuildContext context, int index) {
                        controllerFav.isFavorite[controller.data[index]['items_id']] = controller.data[index]['favorite'];
                        return CustomListItems(
                          index: index,
                          itemsModel: ItemsModel.fromJson(controller.data[index]),
                        );
                      })
              )),
        ]),
      ),
    );
  }
}
