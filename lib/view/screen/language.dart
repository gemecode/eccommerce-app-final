import 'package:final_project/controller/language_controller.dart';
import 'package:final_project/core/localization/changelocal.dart';
import 'package:final_project/view/widget/language/custom_button_language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LanguageControllerImp>(
        init: LanguageControllerImp(),
        builder: (control) => Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("1".tr, style: Theme.of(context).textTheme.headlineLarge),

              const SizedBox(height: 20.0,),

              CustomButtonLanguage(
                textButton: "2".tr, onPressed: (){
                  controller.changeLang("ar");
                  control.goToLogin();
                  },
              ),

              CustomButtonLanguage(
                textButton: "3".tr,
                onPressed: (){
                  controller.changeLang("en");
                  control.goToLogin();
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
