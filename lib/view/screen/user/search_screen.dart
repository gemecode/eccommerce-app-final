
import 'package:final_project/controller/user/homepage_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SearchControllerImp searchControllerImp = Get.put(SearchControllerImp());
    HomeControllerImp homeControllerImp = Get.put(HomeControllerImp());
    // Get.put(SearchControllerImp());
    // FavoriteController controllerFav = Get.put(FavoriteController());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          // CustomAppBar(
          //   titleAppBar: "70".tr,
          //   onPressedIconNotification: (){},
          //   onPressedIconFavorite: (){
          //     Get.toNamed(AppRoute.myFavorite);
          //   },
          //   onPressedSearch: (){},
          // ),

          const SizedBox(height: 20),
          Center(child: Text("Have been found", style: TextStyle(fontSize: 30),)),
          const SizedBox(height: 10),
          // Center(child: Text("${homeControllerImp.word.text}")),
          // Center(child: Text("${searchControllerImp.data.length}")),
          // Text("${searchControllerImp.word}")


        //   GetBuilder<HomeControllerImp>(
        //     // init: SearchControllerImp(),
        //       builder: (controller) => HandlingDataView(
        //           statusRequest: controller.statusRequest,
        //           widget: ListView.builder(
        //               shrinkWrap: true,
        //               physics: const NeverScrollableScrollPhysics(),
        //               itemCount: controller.items.length,
        //               itemBuilder: (BuildContext context, int index) {
        //                 return CustomListItems(
        //                   index: index,
        //                   itemsModel: ItemsModel.fromJson(controller.items[index]),
        //                 );
        //               })
        //
        //   ),
        // //
        // )
        ]),
      ),
    );
  }
}
