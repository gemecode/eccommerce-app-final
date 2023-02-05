import 'package:final_project/controller/user/cart_controller.dart';
import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/product_data.dart';
import 'package:final_project/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController{
  getItems();

}


class ProductDetailsControllerImp extends ProductDetailsController{


  //like items
  ProductData testData = ProductData(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  MyServices myServices = Get.find();







  late ItemsModel itemsModel;
  late int index;


  initialData() {
    itemsModel = Get.arguments['itemsModel'];
    index = Get.arguments['index'];
    print("====================itemsModel ${itemsModel.cart}");
    getItems();
    update();
  }

  List subItemsColor = [
    {"name" : "red", "id" : 1, "active" : "0"},
    {"name" : "yellow", "id" : 2, "active" : "0"},
    {"name" : "black", "id" : 3, "active" : "1"}
  ];

  @override
  void onInit() {
    initialData();
    super.onInit();
  }




  //like items
  @override
  getItems() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await testData.getData(myServices.sharedPreferences.getInt("id")!.toString());
    print("============================== Controller $response ");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] =="success"){
        data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();

  }
}