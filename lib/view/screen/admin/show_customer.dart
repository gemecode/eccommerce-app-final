import 'package:final_project/controller/user/customer_controller.dart';
import 'package:final_project/controller/user/myorders_admin_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowCustomer extends StatelessWidget {
  const ShowCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CustomerController customerController = Get.put(CustomerController());
    // orderController orderController = Get.put(CustomerController());
    MyOrdersAdminController myOrdersAdminController = Get.put(MyOrdersAdminController());
    Get.put(CustomerController);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("95".tr, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
        elevation: 0,
      ),      body: GetBuilder<CustomerController>(
        init: CustomerController(),
        builder: (controller)=> Container(
          padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 20),
          child: Card(
            color: Colors.black45,
            child: HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.customer.length,
                itemBuilder: ((context, index) =>

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30),
                        Text("${controller.customer[index]['users_name']}", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                        const SizedBox(height: 10),
                        Text("${controller.customer[index]['users_email']}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                        const SizedBox(height: 10),
                        Text("${controller.customer[index]['users_phone']}", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                        const SizedBox(height: 30),

                        MaterialButton(
                            onPressed: controller.orderPending == 0? (){
                              controller.done();
                              Get.back();
                              myOrdersAdminController.getData();
                            }: null,
                          child: Text("Done"),
                          color: Colors.white,
                          textColor: Colors.black,
                        )

                      ],
                    )
                ),
              ),

            ),
          )
        ),
      ),
    );
  }
}
