import '../../../core/app_export.dart';

/// This class is used in the [productgrid1_item_widget] screen.
class Productgrid1ItemModel {
  Productgrid1ItemModel({
    this.image,
    this.minuman,
    this.title,
    this.price,
    this.soldCount,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle4135x140);
    minuman = minuman ?? Rx("Minuman");
    title = title ?? Rx("Kopi Hitam");
    price = price ?? Rx("IDR 5.000");
    soldCount = soldCount ?? Rx("100 terjual");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? minuman;

  Rx<String>? title;

  Rx<String>? price;

  Rx<String>? soldCount;

  Rx<String>? id;
}
