import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/home_data.dart';
import 'package:final_project/data/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController{
  initialData();
  getData();
  goToItems(List categories, int selectedCat, int categoryId);
  goToProductDetailsPage(ItemsModel itemsModel, int index);
  goToSearchScreen();

}


class HomeControllerImp extends HomeController{

  // late TextEditingController word;
  // final GlobalKey<FormState> formState = GlobalKey<FormState>();
  // final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();



  MyServices myServices = Get.find();
  String? lang;
  // String? username;
  // String? id;



  HomeData homeData = HomeData(Get.find());
  // List data = [];
  List categories = [];
  List items = [];
  StatusRequest statusRequest = StatusRequest.none;

  @override
  initialData(){
    lang = myServices.sharedPreferences.getString("lang");
    // word = TextEditingController();
    // username = myServices.sharedPreferences.getString("username");
    // id = myServices.sharedPreferences.getString("id");
  }


  @override
  void onInit() {
    initialData();
    getData();
    super.onInit();
  }

  @override
  void dispose() {
    // word.dispose();
    super.dispose();
  }


  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    print("=================================================== Controller $response ");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] =="success"){
        categories.addAll(response['categories']);
        items.addAll(response['items']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }


  @override
  goToItems(categories, selectedCat, categoryId) {
    Get.toNamed(AppRoute.itemsPage, arguments: {
      "categories" : categories,
      "selectedCat" : selectedCat,
      "categoryId" : categoryId,
    });
  }


  goToProductDetailsPage(itemsModel, index) {
    Get.toNamed(AppRoute.productDetails, arguments: {
      "itemsModel" : itemsModel,
      "index" : index,
    });
  }

  @override
  goToSearchScreen() {

    Get.toNamed(AppRoute.searchScreen,
    //     arguments: {
    //   "word" : word,
    // }
    );
  }


}



//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

