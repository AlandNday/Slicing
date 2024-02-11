import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/produk_page/models/produk_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProdukPage.
///
/// This class manages the state of the ProdukPage, including the
/// current produkModelObj
class ProdukController extends GetxController {
  ProdukController(this.produkModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<ProdukModel> produkModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
