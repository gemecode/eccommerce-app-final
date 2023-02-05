// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project/controller/user/myorder_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/translatedatabase.dart';
import 'package:final_project/linkapi.dart';
import 'package:final_project/view/widget/auth/custom_textform_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrder extends StatefulWidget {
   MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
   // List<int> total=[];
   @override
  Widget build(BuildContext context) {
    // late int totalPrice;
    Get.put(MyOrderController());
    MyOrderController controllerOrder = Get.put(MyOrderController());
    // ItemsControllerImp controllerItem = Get.put(ItemsControllerImp());
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height:100),
          Text("87".tr,style:  TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          const SizedBox(height:50),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GetBuilder<MyOrderController>(
              init: MyOrderController(),
                builder: (controller) =>
                Card(
                  child: HandlingDataView(
                    statusRequest: controller.statusRequest,

                    widget: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.orders.length,
                      itemBuilder: ((context, index) =>

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              ListTile(
                                title: Text("${translateDatabase(controller.orders[index]['items_name_ar'], controller.orders[index]['items_name'])}"),
                                leading: CachedNetworkImage(
                                    imageUrl: "${AppLink.imageItems}/${controller.orders[index]['items_image']}",
                                    height: 100,
                                    fit: BoxFit.fill,
                              ),
                                subtitle: Text("${controller.orders[index]['items_price']} ${"500".tr}"),
                                trailing: Text("${"82".tr}\n     ${controller.orders[index]['count']}"),
                              ),
                              Text("${controller.orders[index]['items_price']} * ${controller.orders[index]['count']} - ${controller.orders[index]['items_discount']} * ${controller.orders[index]['count']} = ${controller.orders[index]['items_price'] * controller.orders[index]['count'] - controller.orders[index]['items_discount'] *  controller.orders[index]['count']} ${"500".tr}"),

                              const Divider(),
                              // Text(" ${ controller.totalPrice = controller.totalPrice + (controller.orders[index]['items_price'] * controller.orders[index]['count']) } "),
                            ],
                          )
                          // Center(child: Text(
                          //   // "nothing"
                          //     "${controller.orders[index]['items_name']}   price  ${controller.orders[index]['items_price']}  count   ${controller.orders[index]['count']}  "
                          // )
                          // )
                      ),
                    ),

                  ),
                )
            ),
          ),



          // Column(
          //   children: [
          //     for (var i = 0; i < controllerOrder.orders.length; i++)
          //       // controllerOrder.total.add()
          //     // Text("Total Price ${controllerOrder.orders[i]['items_price'] * controllerOrder.orders[i]['count']}"),
          //   ],
          // ),


          const SizedBox(height: 10),

              TextButton(
                  onPressed: (){setState(() {});
                    },
                  child: Text(
                      controllerOrder.getTotalPrice() == null ? "${"83".tr}${"88".tr}"
                          : "${"83".tr} ${controllerOrder.getTotalPrice()} ${"500".tr}",
                    style: const TextStyle(fontSize: 18, color: AppColor.primaryColor),
                  ),
              ),

          const SizedBox(height: 50),

          Text(

            "89".tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),




          // Text("Total Price ${controllerOrder.orders[0]['items_price'] * controllerOrder.orders[0]['count']}"),

        ],
      ),

      bottomNavigationBar:  Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 40,
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: AppColor.secondColor,
          onPressed: () {

            Get.rawSnackbar(title: "205".tr, messageText: Text("تم حجز الطلب وسيتم التواصل معك ليصلك الطلب في أقرب وقت".tr,style: const TextStyle(color: AppColor.primaryColor)));
            Get.offAllNamed(AppRoute.homePage);
            controllerOrder.addOrder();
            controllerOrder.formatCart();


            // Get.toNamed(AppRoute.myOrder);

            // if (controllerCart.isCart[controller.itemsModel.itemsId] == 1) {
            //   controllerCart.setCart(controller.itemsModel.itemsId, 0);
            //   controllerCart.removeCart(controller.itemsModel.itemsId!.toString());
            // } else {
            //   controllerCart.setCart(controller.itemsModel.itemsId, 1);
            //   controllerCart.addCart(controller.itemsModel.itemsId!.toString());
            // }

            // setState(() {});

          },
          child: Text(


            "86".tr,

            // controllerCart.isCart[controller.itemsModel.itemsId] == 1
            //     ? "Remove From Cart"
            //     : "Add To Cart",

            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),

    );
  }
}
