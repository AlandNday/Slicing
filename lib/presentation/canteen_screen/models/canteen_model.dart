import '../../../core/app_export.dart';
import 'productlist_item_model.dart';

/// This class defines the variables used in the [canteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CanteenModel {
  Rx<List<ProductlistItemModel>> productlistItemList = Rx([
    ProductlistItemModel(
        productImage: ImageConstant.imgRectangle4135x140.obs,
        productName: "Makanan Berat".obs,
        productTitle: "Mie Ayam".obs,
        productPrice: "IDR 10.000".obs,
        productSold: "100 terjual".obs),
    ProductlistItemModel(
        productImage: ImageConstant.imgRectangle45.obs,
        productName: "Makanan Berat".obs,
        productTitle: "Nasi Goreng ".obs,
        productPrice: "IDR 21.000".obs,
        productSold: "100 terjual".obs),
    ProductlistItemModel(
        productImage: ImageConstant.imgRectangle46.obs,
        productName: "Makanan Berat".obs,
        productTitle: "Batagor Bandung".obs,
        productPrice: "IDR 21.000".obs,
        productSold: "100 terjual".obs),
    ProductlistItemModel(
        productImage: ImageConstant.imgRectangle42.obs,
        productName: "Makanan Berat".obs,
        productTitle: "Rawon Bledek ".obs,
        productPrice: "IDR 21.000".obs,
        productSold: "100 terjual".obs)
  ]);
}
