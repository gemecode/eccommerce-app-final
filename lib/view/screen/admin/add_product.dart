// ignore_for_file: unused_field

import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/view/widget/auth/custom_textform_auth.dart';
import 'package:flutter/material.dart';


class AddProduct extends StatefulWidget {
   const AddProduct({Key? key}) : super(key: key);

  static String id = 'AddProduct';

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String? _name, _price, _description, _category, _imageLocation;

  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: Column(
          children: [
            CustomTextFormAuth(
              myController: null,
              hint: 'Product Name',
              onClick: (value){
                return _name=value!;
              },
            ),
            const SizedBox(height: 10,),
            CustomTextFormAuth(
              myController: null,
              hint: 'Product Price',
              onClick: (value){
                return _price=value!;
              },
            ),
            const SizedBox(height: 10,),
            CustomTextFormAuth(
              myController: null,
              hint: 'Product Description',
              onClick: (value){
                return _description=value!;
              },
            ),
            const SizedBox(height: 10,),
            CustomTextFormAuth(
              myController: null,
              hint: 'Product Category',
              onClick: (value){
                return _category=value!;
              },
            ),
            const SizedBox(height: 10,),
            CustomTextFormAuth(
              myController: null,
              hint: 'Product Location',
              onClick: (value){
                return _imageLocation=value!;
              },
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                if(_globalKey.currentState!.validate()){
                  _globalKey.currentState!.save();
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: AppColor.btnAdminActiveColor),
              child: const Text(
                'Add Product',
                // style: TextStyle(color: kAdminColor),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
