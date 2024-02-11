import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.makananBeratImage,
    this.makananBeratText,
    this.kantinBarokahText,
    this.mieAyamText,
    this.idr10000Text,
    this.terjualText,
    this.id,
  }) {
    makananBeratImage =
        makananBeratImage ?? Rx(ImageConstant.imgRectangle4135x140);
    makananBeratText = makananBeratText ?? Rx("Makanan Berat");
    kantinBarokahText = kantinBarokahText ?? Rx("Kantin Barokah");
    mieAyamText = mieAyamText ?? Rx("Mie Ayam");
    idr10000Text = idr10000Text ?? Rx("IDR 10.000");
    terjualText = terjualText ?? Rx("100 terjual");
    id = id ?? Rx("");
  }

  Rx<String>? makananBeratImage;

  Rx<String>? makananBeratText;

  Rx<String>? kantinBarokahText;

  Rx<String>? mieAyamText;

  Rx<String>? idr10000Text;

  Rx<String>? terjualText;

  Rx<String>? id;
}
