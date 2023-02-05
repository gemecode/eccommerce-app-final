import 'package:final_project/controller/user/homepage_controller.dart';
import 'package:final_project/controller/user/search_controller.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  final String titleAppBar;
  // final void Function()? onPressedIconMenu;
  final void Function()? onPressedIconNotification;
  final void Function()? onPressedIconFavorite;
  final void Function()? onPressedSearch;
  final void Function()? onPressedIconMenu;
  // var searchController = TextEditingController();
  const CustomAppBar({Key? key, required this.titleAppBar, this.onPressedIconNotification, this.onPressedSearch, required this.onPressedIconFavorite, this.onPressedIconMenu,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SearchControllerImp searchControllerImp = Get.put(SearchControllerImp());
    HomeControllerImp homeControllerImp = Get.put(HomeControllerImp());

    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(

        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),

            ),
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
              onPressed: onPressedIconMenu,
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Colors.grey[600],
              ),
            ),
          ),

          const SizedBox(width: 10,),

          Expanded(child: TextFormField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(prefixIcon: IconButton(icon: const Icon(Icons.search), onPressed: onPressedSearch, color: Colors.grey), hintText: titleAppBar, hintStyle: const TextStyle(fontSize: 18), border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.grey[200]
            ),
            // controller: homeControllerImp.word,
            // validator: (String? value){
            //   if(value!.isNotEmpty){
            //     return 'search must not be empty';
            //   }
            //   return null;
            // },

          )),

          const SizedBox(width: 10,),

          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),

            ),
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
              onPressed: onPressedIconNotification,
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 30,
                color: Colors.grey[600],
              ),
            ),
          ),

          const SizedBox(width: 10,),

          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),

            ),
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
              onPressed: onPressedIconFavorite,
              icon: Icon(
                Icons.favorite_outline,
                size: 30,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
