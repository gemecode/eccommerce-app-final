import 'package:final_project/controller/user/homepage_controller.dart';
import 'package:final_project/controller/user/homescreen_controller.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/alertexit.dart';
import 'package:final_project/main.dart';
import 'package:final_project/view/widget/home/custom_buttom_appbar_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:final_project/core/localization/changelocal.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp homeControllerImp = Get.put(HomeControllerImp());
    Get.put(HomeScreenControllerImp());
    HomeControllerImp controllerImp = Get.put(HomeControllerImp());
    LocaleController localeController = Get.put(LocaleController());
    return WillPopScope(
      onWillPop: alertExitApp,
      child: GetBuilder<HomeScreenControllerImp>(
        builder: (control) => Form(
          child: Scaffold(
            key: control.scaffoldKey,
            // key: key,

            drawer: Drawer(
                child: Column(
                  children: [
                    UserAccountsDrawerHeader(
                        decoration: const BoxDecoration(color: AppColor.primaryColor),
                        currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Image.asset("assets/images/icon-user.png"),
                  ),
                        accountName: Text("${controllerImp.myServices.sharedPreferences.getString("username")}"),
                        accountEmail: Text("${controllerImp.myServices.sharedPreferences.getString("email")}")
                    ),


                    ListTile(title: Text("100".tr), leading: const Icon(Icons.exit_to_app), onTap: (){
                      sharedPref.clear();
                      Navigator.of(context).pushNamedAndRemoveUntil(AppRoute.login, (route) => false);
                      },
                    ),


                    ListTile(title: Text("101".tr), leading: const Icon(Icons.language)),


                    ListTile(
                      title: const Text("English"), leading: const Text("🇺🇸"),
                      onTap: (){
                        localeController.changeLang("en");
                        homeControllerImp.lang="en";
                        },),

                    ListTile(
                      title: const Text("العربية"), leading: const Text("🇪🇬"),
                      onTap: (){
                        localeController.changeLang("ar");
                        homeControllerImp.lang="ar";
                      },),

                  ],

            )),

            // backgroundColor: Colors.red,
            floatingActionButton: FloatingActionButton(
              backgroundColor: AppColor.primaryColor,
              onPressed: () {
                Get.toNamed(AppRoute.myCart);
              },
              child: const Icon(Icons.shopping_basket_outlined),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

            bottomNavigationBar: const CustomBottomAppBarHome(),

            body: control.listPage.elementAt(control.currentPage),
          ),
        ),
      ),
    );
  }
}

