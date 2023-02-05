import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/home_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProfileController extends GetxController{
  // initialData();
  // getData();

}


class ProfileControllerImp extends ProfileController{



  MyServices myServices = Get.find();
  String? lang;



  HomeData homeData = HomeData(Get.find());
  List categories = [];
  List items = [];
  StatusRequest statusRequest = StatusRequest.none;



  // @override
  // initialData(){
  //   lang = myServices.sharedPreferences.getString("lang");
  // }
  //


  //
  // @override
  // void onInit() {
  //   initialData();
  //   getData();
  //   super.onInit();
  // }



  // @override
  // getData() async {
  //   statusRequest = StatusRequest.loading;
  //   var response = await homeData.getData();
  //   print("=================================================== Controller $response ");
  //   statusRequest = handlingData(response);
  //   if(StatusRequest.success == statusRequest){
  //     if(response['status'] =="success"){
  //       categories.addAll(response['categories']);
  //       items.addAll(response['items']);
  //     }else{
  //       statusRequest = StatusRequest.failure;
  //     }
  //   }
  //   update();
  // }



}