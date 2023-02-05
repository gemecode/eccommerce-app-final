import 'package:final_project/controller/user/homescreen_controller.dart';
import 'package:final_project/view/widget/home/custom_button_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(builder: (controller) =>
        BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            children: [
              const Spacer(flex: 1),
              ...List.generate(controller.listPage.length + 1, (index) {
                int i = index > 1 ? index - 1 : index;
                return index == 1
                    ? const Spacer(flex: 2)
                    : CustomButtonAppBar(
                  onPressed: () {
                    controller.changePage(i);
                  },
                  buttonText: controller.titleBottomAppBar[i],
                  iconData: controller.iconBottomAppBar[i],
                  active: controller.currentPage == i ? true : false,
                );
              }),
              const Spacer(flex: 1),

            ],
          ),
        ),
    );
  }
}
