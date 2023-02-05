import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),

      height: 500,
      child:
      Image(image: AssetImage(AppImage.btc),),

      // SvgPicture.asset(AppImage.bag),




      // height: MediaQuery.of(context).size.height * .5,
      // child: Stack(
      //
      //   alignment: Alignment.center,
      //   children:  const [
      //     // Image(image: AssetImage(AppImage.shirt),),
      //
      //     // ColorFiltered(
      //     //   colorFilter: ColorFilter.mode(
      //     //       Colors.amber,
      //     //       BlendMode.color),
      //     //   child: Image(image: AssetImage(AppImage.btc)),
      //     // ),
      //
      //     Image(image: AssetImage(AppImage.btc),),
      //
      //   ],
      // ),

    );
  }
}
