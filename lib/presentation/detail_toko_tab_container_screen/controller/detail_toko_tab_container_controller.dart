import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/detail_toko_tab_container_screen/models/detail_toko_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DetailTokoTabContainerScreen.
///
/// This class manages the state of the DetailTokoTabContainerScreen, including the
/// current detailTokoTabContainerModelObj
class DetailTokoTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<DetailTokoTabContainerModel> detailTokoTabContainerModelObj =
      DetailTokoTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
