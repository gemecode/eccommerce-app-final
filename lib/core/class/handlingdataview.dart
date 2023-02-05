import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      statusRequest == StatusRequest.loading
        ? ColorFiltered(colorFilter: const ColorFilter.mode(AppColor.primaryColor, BlendMode.modulate), child: Center(child: Lottie.asset(AppImage.loading)))
        : statusRequest == StatusRequest.offlineFailure
            ? ColorFiltered(colorFilter: const ColorFilter.mode(AppColor.primaryColor , BlendMode.modulate), child: Center(child: Lottie.asset(AppImage.offLine)))
            : statusRequest == StatusRequest.serverFailure
                ? ColorFiltered(colorFilter: const ColorFilter.mode(AppColor.primaryColor , BlendMode.modulate), child: Center(child: Lottie.asset(AppImage.server)))
                : statusRequest == StatusRequest.failure
                    ? ColorFiltered(colorFilter: const ColorFilter.mode(AppColor.primaryColor , BlendMode.modulate), child: Center(child: Lottie.asset(AppImage.noData)))
                    : widget;
  }
}
class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      statusRequest == StatusRequest.loading
          ? ColorFiltered(colorFilter: const ColorFilter.mode(AppColor.primaryColor, BlendMode.modulate), child: Center(child: Lottie.asset(AppImage.loading)))
          : statusRequest == StatusRequest.offlineFailure
          ? ColorFiltered(colorFilter: const ColorFilter.mode(AppColor.primaryColor , BlendMode.modulate), child: Center(child: Lottie.asset(AppImage.offLine)))
          : statusRequest == StatusRequest.serverFailure
          ? ColorFiltered(colorFilter: const ColorFilter.mode(AppColor.primaryColor , BlendMode.modulate), child: Center(child: Lottie.asset(AppImage.server)))
          : widget;
  }
}