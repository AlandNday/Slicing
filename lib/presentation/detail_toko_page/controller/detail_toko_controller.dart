import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/detail_toko_page/models/detail_toko_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DetailTokoPage.
///
/// This class manages the state of the DetailTokoPage, including the
/// current detailTokoModelObj
class DetailTokoController extends GetxController {
  DetailTokoController(this.detailTokoModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<DetailTokoModel> detailTokoModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
