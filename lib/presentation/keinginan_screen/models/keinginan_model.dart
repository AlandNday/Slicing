import '../../../core/app_export.dart';
import 'productlist1_item_model.dart';

/// This class defines the variables used in the [keinginan_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class KeinginanModel {
  Rx<List<Productlist1ItemModel>> productlist1ItemList = Rx([
    Productlist1ItemModel(
        productImage: ImageConstant.imgRectangle4135x140.obs,
        productName: "Makanan Berat".obs,
        productTitle: "Mie Ayam".obs,
        productPrice: "IDR 10.000".obs,
        productSold: "100 terjual".obs),
    Productlist1ItemModel(
        productImage: ImageConstant.imgRectangle45.obs,
        productName: "Makanan Berat".obs,
        productTitle: "Nasi Goreng ".obs,
        productPrice: "IDR 21.000".obs,
        productSold: "100 terjual".obs),
    Productlist1ItemModel(
        productImage: ImageConstant.imgRectangle47.obs,
        productName: "Makanan Ringan".obs,
        productTitle: "Roti Goreng".obs,
        productPrice: "IDR 1.000".obs,
        productSold: "100 terjual".obs),
    Productlist1ItemModel(
        productImage: ImageConstant.imgRectangle42.obs,
        productName: "Makanan Berat".obs,
        productTitle: "Rawon Bledek ".obs,
        productPrice: "IDR 21.000".obs,
        productSold: "100 terjual".obs),
    Productlist1ItemModel(
        productImage: ImageConstant.imgRectangle48.obs,
        productName: "Makanan Ringan".obs,
        productTitle: "Cilok Halilintar".obs,
        productPrice: "IDR 5.000".obs,
        productSold: "100 terjual".obs),
    Productlist1ItemModel(
        productImage: ImageConstant.imgRectangle49.obs,
        productName: "Makanan Ringan".obs,
        productTitle: "Susu Kedelai".obs,
        productPrice: "IDR 2.000".obs,
        productSold: "100 terjual".obs)
  ]);
}
