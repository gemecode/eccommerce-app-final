import 'package:final_project/controller/user/homepage_controller.dart';
import 'package:final_project/controller/user/profilepage_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/view/widget/custom_appbar_home.dart';
import 'package:final_project/view/widget/home/custom_card_home.dart';
import 'package:final_project/view/widget/home/custom_list_categories_home.dart';
import 'package:final_project/view/widget/home/custom_list_items_home.dart';
import 'package:final_project/view/widget/home/custom_title_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileControllerImp>(
      init: ProfileControllerImp(),
      builder: (controller) =>  HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [


              const SizedBox(height: 150,),
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey,
                child: Image.asset("assets/images/icon-user.png"),
              ),

              Center(child: Text("${controller.myServices.sharedPreferences.getString("username")}",style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
              Center(child: Text("${controller.myServices.sharedPreferences.getString("email")}",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),)),
              Center(child: Text("${controller.myServices.sharedPreferences.getString("phone")}",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),)),
              const SizedBox(height: 100,),

              Card(
                child: Column(
                  children: [
                    ListTile(title: Text("78".tr), leading: const Icon(Icons.shopping_cart),onTap: (){Get.toNamed(AppRoute.ordersScreen);} ),
                    // ListTile(title: Text("79".tr), leading: Icon(Icons.help)),
                    // ListTile(title: Text("80".tr), leading: Icon(Icons.chat)),
                    // ListTile(title: Text("81".tr), leading: Icon(Icons.settings)),
                  ],
                ),
              ),
              // CustomAppBar(
              //   titleAppBar: "70".tr,
              //
              //   onPressedIconNotification: (){},
              //   onPressedIconFavorite: (){
              //     Get.toNamed(AppRoute.myFavorite);
              //   },
              //   onPressedSearch: (){},
              // ),



              // CustomCardHome(
              //   title: "71".tr,
              //   body: "72".tr,
              // ),



              // CustomTitleHome(
              //   title: "73".tr,
              // ),



              // const CustomListCategoriesHome(),



              // CustomTitleHome(
              //   title: "74".tr,
              // ),



              // const CustomListItemsHome(),



              // CustomTitleHome(
              //   title: "75".tr,
              // ),

              // const CustomListItemsHome(),

            ],
          ),
        ),
      ),
    );
  }
}
