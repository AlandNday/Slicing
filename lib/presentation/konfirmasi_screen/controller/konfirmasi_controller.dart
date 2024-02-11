import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/konfirmasi_screen/models/konfirmasi_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the KonfirmasiScreen.
///
/// This class manages the state of the KonfirmasiScreen, including the
/// current konfirmasiModelObj
class KonfirmasiController extends GetxController {
  TextEditingController canteenController = TextEditingController();

  Rx<KonfirmasiModel> konfirmasiModelObj = KonfirmasiModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    canteenController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in konfirmasiModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    konfirmasiModelObj.value.dropdownItemList.refresh();
  }
}
