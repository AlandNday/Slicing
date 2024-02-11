import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/home_tab_container_page/models/home_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeTabContainerPage.
///
/// This class manages the state of the HomeTabContainerPage, including the
/// current homeTabContainerModelObj
class HomeTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  HomeTabContainerController(this.homeTabContainerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeTabContainerModel> homeTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
