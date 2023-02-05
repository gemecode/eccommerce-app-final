// ignore_for_file: unrelated_type_equality_checks
import 'package:final_project/controller/user/mycart_controller.dart';
import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/add_order_data.dart';
import 'package:final_project/data/datasource/remote/mycart_data.dart';
import 'package:final_project/data/datasource/remote/myorder_data.dart';
import 'package:final_project/data/datasource/remote/myorders_admin_data.dart';
import 'package:final_project/data/datasource/remote/myorders_data.dart';
import 'package:get/get.dart';

class MyOrdersAdminController extends GetxController{


  // MyCartController myCartController = Get.put(MyCartController());

  AdminViewOrderData adminViewOrderData = AdminViewOrderData(Get.find());


  // AddOrderData addOrderData = AddOrderData(Get.find());
  // MyCartData cartData = MyCartData(Get.find());


  MyServices myServices = Get.find();
  List orders = [];


  late StatusRequest statusRequest;





  @override
  void onInit() {
    getData();
    super.onInit();
    update();
  }

  getData() async{
    orders.clear();
    statusRequest = StatusRequest.loading;
    var response = await adminViewOrderData.getData();
    print("============================== Controller $response ");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] =="success"){
        List responseData = response['data'];
        orders.addAll(response['data']);
        // data.addAll(responseData.map((e) => MyOrderModel.fromJson(e)));
        print("============== data = $orders");
      }else{
        statusRequest = StatusRequest.failure;
      }
    }

    update();

  }





}