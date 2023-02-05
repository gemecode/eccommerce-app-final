import 'package:final_project/controller/user/homepage_controller.dart';
import 'package:final_project/controller/user/homescreen_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/view/widget/custom_appbar_home.dart';
import 'package:final_project/view/widget/home/custom_card_home.dart';
import 'package:final_project/view/widget/home/custom_list_categories_home.dart';
import 'package:final_project/view/widget/home/custom_list_items_home.dart';
import 'package:final_project/view/widget/home/custom_title_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenControllerImp homeScreenControllerImp = Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeControllerImp>(
        init: HomeControllerImp(),
        builder: (controller) =>  HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                // shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                children: [

                  CustomAppBar(
                    titleAppBar: "70".tr,

                    onPressedIconMenu: (){
                      homeScreenControllerImp.scaffoldKey.currentState!.openDrawer();
                    },
                    onPressedIconNotification: (){},

                    onPressedIconFavorite: (){Get.toNamed(AppRoute.myFavorite);},

                    // controller: controller.word,

                    // validator: (String? value){
                    //   if(controller.word.text.isEmpty){
                    //     return 'search must not be empty';
                    //   }
                    //   return null;
                    // },

                    onPressedSearch: (){
                      print("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
                      // print(controller.word.text);
                      controller.goToSearchScreen();
                    },

                  ),

                  CustomCardHome(
                    title: "71".tr,
                    body: "72".tr,
                  ),

                  CustomTitleHome(
                    title: "73".tr,
                  ),

                  const CustomListCategoriesHome(),

                  CustomTitleHome(
                    title: "74".tr,
                  ),

                  const CustomListItemsHome(),



                  ////OFERS////

                  // CustomTitleHome(
                  //   title: "75".tr,
                  // ),
                  //
                  // const CustomListItemsHome(),

                ],
              ),
            ),
        ),
      );
  }
}
