import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/cart_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CartController extends GetxController{


  CartData cartData = CartData(Get.find());
  MyServices myServices = Get.find();
  List data = [];
  late StatusRequest statusRequest;



  Map isCart = {};

  // key => id items
  // value => 1 or 0

  setCart(id , val){
    isCart[id] = val ;
    update() ;
  }


  addCart(String itemsid) async{
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await cartData.addCart(
        myServices.sharedPreferences.getInt("id")!.toString(), itemsid);
    print("============================== Controller $response ");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] =="success"){
        Get.rawSnackbar(title: "205".tr, messageText: Text("213".tr,style: const TextStyle(color: AppColor.primaryColor)));
        // data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
  }


  removeCart(String itemsid) async{
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await cartData.removeCart(
        myServices.sharedPreferences.getInt("id")!.toString(), itemsid);
    print("============================== Controller $response ");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] =="success"){
        Get.rawSnackbar(title: "205".tr, messageText: Text("214".tr, style: const TextStyle(color: AppColor.primaryColor)));
        // data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }

  }
}