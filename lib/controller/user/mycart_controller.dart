// ignore_for_file: unrelated_type_equality_checks
import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/mycart_data.dart';
import 'package:final_project/data/datasource/remote/myfavorite_data.dart';
import 'package:final_project/data/model/mycart_model.dart';
import 'package:final_project/data/model/myfavorite_model.dart';
import 'package:get/get.dart';

class MyCartController extends GetxController{


  MyCartData cartData = MyCartData(Get.find());
  MyServices myServices = Get.find();
  List <MyCartModel>data = [];
  late StatusRequest statusRequest;




  // key => id items
  // value => 1 or 0




  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData() async{
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await cartData.getData(
        myServices.sharedPreferences.getInt("id")!.toString());
    print("============================== Controller $response ");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] =="success"){
        List responseData = response['data'];
        data.addAll(responseData.map((e) => MyCartModel.fromJson(e)));
        print("============== data = $data");
      }else{
        statusRequest = StatusRequest.failure;
      }
    }

    update();

  }



  deleteFromCart(int cartid) {
    // data.clear();
    // statusRequest = StatusRequest.loading;
    var response = cartData.deleteData(cartid);
    data.removeWhere((element) => element.cartId == cartid);
    update();
  }



  deleteOrderFromCart(int userid) {
    // data.clear();
    // statusRequest = StatusRequest.loading;
    var response = cartData.deleteData(userid);
    data.removeWhere((element) => element.cartUsersid == userid);
    update();
  }





}