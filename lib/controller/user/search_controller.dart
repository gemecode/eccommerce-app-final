import 'package:final_project/controller/user/homepage_controller.dart';
import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/items_data.dart';
import 'package:final_project/data/datasource/remote/search_data.dart';
import 'package:final_project/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class SearchController extends GetxController{
  getSearchItems();
  // goToProductDetailsPage(ItemsModel itemsModel, int index);
}

// class SearchControllerImp extends SearchController{
//
//   HomeControllerImp homeControllerImp = Get.put(HomeControllerImp());
//
//   SearchData searchData = SearchData(Get.find());
//   late StatusRequest statusRequest;
//   MyServices myServices = Get.find();
//
//
//
//
//   List data = [];
//
//   // String? lang;
//   // late String? word;
//
//
//
//
//
//   @override
//   void onInit() {
//     print("ppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp");
//     print(myServices.sharedPreferences.getString("lang"));
//     // print( homeControllerImp.word.text);
//     getSearchItems();
//     super.onInit();
//   }
//   //
//   // print("ppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp");
//   // print(word);
//   // lang = myServices.sharedPreferences.getString("lang");
//   // getSearchItems();
//
//
//
//
//
//   //
//   // @override
//   // getSearchItems() async {
//   //   print("ppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp");
//   //   print(myServices.sharedPreferences.getString("lang"));
//   //   // print( homeControllerImp.word.text);
//   //   data.clear();
//   //   statusRequest = StatusRequest.loading;
//   //   // var response = await searchData.getData(myServices.sharedPreferences.getString("lang") == "en" ? "items_name" : "items_name_ar", homeControllerImp.word.text);
//   //   print("============================== Controller $response ");
//   //   statusRequest = handlingData(response);
//   //   if(StatusRequest.success == statusRequest){
//   //     if(response['status'] =="success"){
//   //       data.addAll(response['data']);
//   //     }else{
//   //       statusRequest = StatusRequest.failure;
//   //     }
//   //   }
//   //   update();
//   //
//   // }
//
//   // @override
//   // goToProductDetailsPage(itemsModel, index) {
//   //   Get.toNamed(AppRoute.productDetails, arguments: {
//   //     "itemsModel" : itemsModel,
//   //     "index" : index,
//   //   });
//   // }
//
// }