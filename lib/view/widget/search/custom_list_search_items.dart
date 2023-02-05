// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:final_project/controller/user/favorite_controller.dart';
// import 'package:final_project/controller/user/itemspage_controller.dart';
// import 'package:final_project/controller/user/search_controller.dart';
// import 'package:final_project/core/constant/colors.dart';
// import 'package:final_project/core/function/translatedatabase.dart';
// import 'package:final_project/data/model/items_model.dart';
// import 'package:final_project/data/model/search_model.dart';
// import 'package:final_project/linkapi.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class CustomListSearchItems extends GetView<SearchControllerImp> {
//   final SearchModel searchModel;
//   final int index;
//   // final bool active;
//   const CustomListSearchItems({Key? key, required this.searchModel, required this.index}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         // controller.goToProductDetailsPage(searchModel, index);
//       },
//       child: Card(
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Hero(
//                   tag: "${searchModel.itemsId}",
//                   child:
//                   Image.network(
//                     "${AppLink.imageItems}/${searchModel.itemsImage}",
//                     height: 250,
//                     fit: BoxFit.fill,
//                   )
//
//                   // CachedNetworkImage(
//                   //   imageUrl: "${AppLink.imageItems}/${searchModel.itemsImage}",
//                   //   height: 250,
//                   //   fit: BoxFit.fill,
//                   // )
//               ),
//               SizedBox(height: 20),
//               Text(
//                 "${translateDatabase(searchModel.itemsNameAr, searchModel.itemsName)}",
//                 style: const TextStyle(
//                     color: AppColor.black,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     alignment: Alignment.bottomCenter,
//                     height: 22,
//                   )
//                 ],
//               ),
//               // Text("${itemsModel.itemsDesc}", textAlign: TextAlign.center,),
//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //   children: [
//               //     Text(
//               //       "${searchModel.itemsPrice} \$",
//               //       style: const TextStyle(
//               //           color: AppColor.primaryColor,
//               //           fontSize: 16,
//               //           fontWeight: FontWeight.bold,
//               //           fontFamily: "sans"),
//               //     ),
//               //
//               //   ],
//               // )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
