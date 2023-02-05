// ignore_for_file: unrelated_type_equality_checks
import 'package:final_project/controller/user/mycart_controller.dart';
import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/add_order_data.dart';
import 'package:final_project/data/datasource/remote/customer_data.dart';
import 'package:final_project/data/datasource/remote/done_data.dart';
import 'package:final_project/data/datasource/remote/mycart_data.dart';
import 'package:final_project/data/datasource/remote/myorder_data.dart';
import 'package:final_project/data/datasource/remote/myorders_admin_data.dart';
import 'package:final_project/data/datasource/remote/myorders_data.dart';
import 'package:get/get.dart';

class CustomerController extends GetxController{


  // MyCartController myCartController = Get.put(MyCartController());

  CustomerData customerData = CustomerData(Get.find());

  DoneData doneData = DoneData(Get.find());


  // AddOrderData addOrderData = AddOrderData(Get.find());
  // MyCartData cartData = MyCartData(Get.find());


  MyServices myServices = Get.find();
  List customer = [];


  late StatusRequest statusRequest;


  int? customerId;
  int? orderId;
  int? orderPending;




  @override
  void onInit() {
    customerId = Get.arguments['customerId'];
    orderId = Get.arguments['orderId'];
    orderPending = Get.arguments['orderPending'];
    getData(customerId!);
    super.onInit();
    update();
  }

  getData(int customerId) async{
    customer.clear();
    statusRequest = StatusRequest.loading;
    var response = await customerData.getData(customerId.toString());
    print("============================== Controller $response ");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] =="success"){
        List responseData = response['data'];
        customer.addAll(response['data']);
        // data.addAll(responseData.map((e) => MyOrderModel.fromJson(e)));
        print("============== data = $customer");
      }else{
        statusRequest = StatusRequest.failure;
      }
    }

    update();

  }

  done() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await doneData.postData(orderId.toString(), "1");
    print("========================== Controller $response ");
    statusRequest = handlingData(response);
    // if(StatusRequest.success == statusRequest){
    //   if(response['status'] =="success"){
    //     // Get.offNamed(AppRoute.adminOrdersScreen);
    //     Get.back();
    //   }else{
    //     Get.defaultDialog(title: "warning", middleText: "خطأ في التسجيل".tr);
    //     statusRequest = StatusRequest.failure;
    //   }
    // }
    update();

  }






}