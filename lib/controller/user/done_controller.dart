// ignore_for_file: unrelated_type_equality_checks
import 'package:final_project/controller/user/mycart_controller.dart';
import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/add_order_data.dart';
import 'package:final_project/data/datasource/remote/done_data.dart';
import 'package:final_project/data/datasource/remote/mycart_data.dart';
import 'package:final_project/data/datasource/remote/myfavorite_data.dart';
import 'package:final_project/data/datasource/remote/myorder_data.dart';
import 'package:final_project/data/model/mycart_model.dart';
import 'package:final_project/data/model/myfavorite_model.dart';
import 'package:final_project/data/model/myorder_model.dart';
import 'package:get/get.dart';

class MyOrderController extends GetxController{


  // MyCartController myCartController = Get.put(MyCartController());

  // MyOrderData orderData = MyOrderData(Get.find());
  // AddOrderData addOrderData = AddOrderData(Get.find());
  // MyCartData cartData = MyCartData(Get.find());
  DoneData doneData = DoneData(Get.find());


  MyServices myServices = Get.find();
  // List <MyOrderModel>data = [];
  List orders = [];

  // List total = [];
  // String order = orders[0]['orders'];

  // MyOrderModel myOrderModel = MyOrderModel();
  late StatusRequest statusRequest;

  // int index=0;
  // late int totalPrice;
  // num sum = 0;
  //
  //









  //
  //
  // addOrder() async {
  //   statusRequest = StatusRequest.loading;
  //   update();
  //   print("##################################################################################");
  //   for (var i = 0; i < orders.length; i++){
  //     var response = await addOrderData.postData(orders[i]['customer_id'].toString(), orders[i]['items_id'].toString(), orders[i]['items_name'], orders[i]['items_name_ar'] , orders[i]['items_price'].toString(), orders[i]['count'].toString(), orders[i]['items_discount'].toString());
  //     print("======================================================== Controller $response ");
  //     statusRequest = handlingData(response);
  //     if(StatusRequest.success == statusRequest){
  //       if(response['status'] =="success"){
  //         // data.addAll(response['data']);
  //         // Get.toNamed(AppRoute.verifyCodeSignUp, arguments: {"email" : email.text});
  //       }else{
  //         Get.defaultDialog(title: "199".tr, middleText: "201".tr);
  //         statusRequest = StatusRequest.failure;
  //       }
  //     }
  //
  //   }
  //
  //   update();
  //
  // }
  //

  // done() async {
  //     statusRequest = StatusRequest.loading;
  //     update();
  //     var response = await doneData.postData(email!, password.text);
  //     print("========================== Controller $response ");
  //     statusRequest = handlingData(response);
  //     if(StatusRequest.success == statusRequest){
  //       if(response['status'] =="success"){
  //         goToSuccessResetPassword();
  //       }else{
  //         Get.defaultDialog(title: "199".tr, middleText: "204".tr);
  //         statusRequest = StatusRequest.failure;
  //       }
  //     }
  //     update();
  //
  // }






}