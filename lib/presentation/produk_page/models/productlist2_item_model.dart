import '../../../core/app_export.dart';

/// This class is used in the [productlist2_item_widget] screen.
class Productlist2ItemModel {
  Productlist2ItemModel({
    this.group,
    this.id,
  }) {
    group = group ?? Rx("Semua");
    id = id ?? Rx("");
  }

  Rx<String>? group;

  Rx<String>? id;
}
