import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/toko_page/models/toko_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TokoPage.
///
/// This class manages the state of the TokoPage, including the
/// current tokoModelObj
class TokoController extends GetxController {
  TokoController(this.tokoModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<TokoModel> tokoModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
