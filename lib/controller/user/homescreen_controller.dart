// ignore_for_file: avoid_renaming_method_parameters

import 'package:final_project/view/screen/user/home_page.dart';
import 'package:final_project/view/screen/user/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController{
changePage(int currentPage);
}

class HomeScreenControllerImp extends HomeScreenController{

  // GlobalKey<ScaffoldState> scafoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();



  int currentPage = 0;

  List<Widget> listPage =[

    const HomePage(),

    // Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: const [
    //     Center(child: Text("Settings"),)
    //   ],
    // ),

    const ProfilePage(),

    // Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: const [
    //     Center(child: Text("Profile"),)
    //   ],
    // ),

    // Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: const [
    //     Center(child: Text("Favorirte"),)
    //   ],
    // ),

  ];

  List titleBottomAppBar =[
    "76".tr,
    "77".tr,
  ];

  List iconBottomAppBar =[
    Icons.home,
    Icons.person,
  ];

  @override
  changePage(int index) {
    currentPage = index;
    update();
  }



}