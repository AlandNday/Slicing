import '../../../core/app_export.dart';

/// This class is used in the [productgrid_item_widget] screen.
class ProductgridItemModel {
  ProductgridItemModel({
    this.image,
    this.title,
    this.restaurantName,
    this.productName,
    this.price,
    this.quantitySold,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle4135x140);
    title = title ?? Rx("Makanan Berat");
    restaurantName = restaurantName ?? Rx("Kantin Barokah");
    productName = productName ?? Rx("Mie Ayam");
    price = price ?? Rx("IDR 10.000");
    quantitySold = quantitySold ?? Rx("100 terjual");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? restaurantName;

  Rx<String>? productName;

  Rx<String>? price;

  Rx<String>? quantitySold;

  Rx<String>? id;
}
