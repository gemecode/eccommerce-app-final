import 'package:final_project/controller/user/myorders_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/function/translatedatabase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyOrdersController myOrdersController = Get.put(MyOrdersController());
    Get.put(MyOrdersController());

    return Scaffold(
      body: GetBuilder<MyOrdersController>(
        builder:(controller)=> Container(
          padding: const EdgeInsets.all(15),
          child: ListView(
            // shrinkWrap: true,
            // physics: BouncingScrollPhysics(),
            children: [
              Center(child: Text("78".tr, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
              const SizedBox(height: 30),
              Card(
                child: HandlingDataView(
                  statusRequest: controller.statusRequest,

                  widget: ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),

                    itemCount: controller.orders.length,
                    itemBuilder: ((context, index) =>

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            ListTile(
                              title: Text("${translateDatabase(controller.orders[index]['order_item_name_ar'], controller.orders[index]['order_item_name'])} ${"82".tr} ${controller.orders[index]['order_item_count']}"),
                              leading:  const Icon(Icons.shopping_cart),
                              subtitle: Text("${"83".tr} ${controller.orders[index]['order_item_price']} * ${controller.orders[index]['order_item_count']} = ${controller.orders[index]['order_item_price'] * controller.orders[index]['order_item_count'] - controller.orders[index]['order_item_discount'] * controller.orders[index]['order_item_count']} ${"500".tr}"),
                              trailing: Text("${controller.orders[index]['time']}"),
                            ),
                            const Divider(),
                            // Text(" ${ controller.totalPrice = controller.totalPrice + (controller.orders[index]['items_price'] * controller.orders[index]['count']) } "),
                          ],
                        )
                    ),
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
