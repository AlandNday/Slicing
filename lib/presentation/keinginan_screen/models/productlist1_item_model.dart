import '../../../core/app_export.dart';

/// This class is used in the [productlist1_item_widget] screen.
class Productlist1ItemModel {
  Productlist1ItemModel({
    this.productImage,
    this.productName,
    this.productTitle,
    this.productPrice,
    this.productSold,
    this.id,
  }) {
    productImage = productImage ?? Rx(ImageConstant.imgRectangle4135x140);
    productName = productName ?? Rx("Makanan Berat");
    productTitle = productTitle ?? Rx("Mie Ayam");
    productPrice = productPrice ?? Rx("IDR 10.000");
    productSold = productSold ?? Rx("100 terjual");
    id = id ?? Rx("");
  }

  Rx<String>? productImage;

  Rx<String>? productName;

  Rx<String>? productTitle;

  Rx<String>? productPrice;

  Rx<String>? productSold;

  Rx<String>? id;
}
