import 'package:final_project/controller/user/myorders_admin_controller.dart';
import 'package:final_project/controller/user/myorders_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/translatedatabase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminOrdersScreen extends StatelessWidget {
  const AdminOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyOrdersAdminController myOrdersAdminController = Get.put(MyOrdersAdminController());
    Get.put(MyOrdersAdminController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("94".tr, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
        elevation: 0,
      ),
      body: GetBuilder<MyOrdersAdminController>(
        builder:(controller)=> Container(
          padding: const EdgeInsets.all(15),
          child: Card(
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
                          title: Text("${translateDatabase(controller.orders[index]['order_item_name'], controller.orders[index]['order_item_name_ar'])} ${"82".tr} ${controller.orders[index]['order_item_count']}"),
                          leading:  Text("${controller.orders[index]['order_customer_id']}"),
                          subtitle: Text("${"83".tr} ${controller.orders[index]['order_item_price']} * ${controller.orders[index]['order_item_count']} = ${controller.orders[index]['order_item_price'] * controller.orders[index]['order_item_count']} ${"500".tr}"),
                          trailing: Text("${controller.orders[index]['time']}"),
                          onTap: (){
                            Get.toNamed(AppRoute.showCustomer, arguments: {
                              "customerId" : controller.orders[index]['order_customer_id'],
                              "orderId" : controller.orders[index]['order_id'],
                              "orderPending" : controller.orders[index]['order_pending'],

                            });
                          },
                          tileColor: controller.orders[index]['order_pending'] == 1 ? AppColor.thirdColor : null
                        ),
                        const Divider(),
                        // Text(" ${ controller.totalPrice = controller.totalPrice + (controller.orders[index]['items_price'] * controller.orders[index]['count']) } "),
                      ],
                    )
                ),
              ),

            ),
          ),
        ),
      ),
    );
  }
}
