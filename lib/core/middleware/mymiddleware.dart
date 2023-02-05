import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware{

  MyServices myServices = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route){

    if(myServices.sharedPreferences.getString("step") == "2"){
      return const RouteSettings(name: AppRoute.homePage);
    }

    if(myServices.sharedPreferences.getString("step") == "1"){
      return const RouteSettings(name: AppRoute.login);
    }

    return null;
  }
}