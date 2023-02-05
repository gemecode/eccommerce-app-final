import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/items_data.dart';
import 'package:final_project/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController{
  initialData();
  changeCat(int val, int catVal);
  getItems(int categoryId);
  goToProductDetailsPage(ItemsModel itemsModel, int index);
}

class ItemsControllerImp extends ItemsController{

  List categories =[];
  int? selectedCat ;
  int? categoryId ;
  ItemsData testData = ItemsData(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  MyServices myServices = Get.find();




  @override
  void onInit() {
    initialData();
    super.onInit();
  }
  

  @override
  initialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedCat'];
    categoryId = Get.arguments['categoryId'];
    getItems(categoryId!);
  }


  @override
  changeCat(val, catVal) {
    selectedCat = val;
    categoryId = catVal;
    getItems(categoryId!);
    update();
  }

  @override
  getItems(categoryId) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await testData.getData(categoryId.toString(), myServices.sharedPreferences.getInt("id")!.toString());
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

  @override
  goToProductDetailsPage(itemsModel, index) {
    Get.toNamed(AppRoute.productDetails, arguments: {
      "itemsModel" : itemsModel,
      "index" : index,
    });
  }

}