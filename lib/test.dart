// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/checkinternet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override

  var res;

  initialData() async{
    res = await checkInternet();
    print("##################### connection = $res");

  }


  void initState() {
    initialData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: const Text("Test"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [

            OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(20.0),
              numberOfFields: 5,
              filled: true,
              fillColor: Colors.red,
              enabledBorderColor: Colors.green,
              focusedBorderColor: Colors.black,
              cursorColor: Colors.amber,

              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),

          ],
        ),
      ),
    );
  }
}
