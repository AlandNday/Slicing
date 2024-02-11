import '../../../core/app_export.dart';
import 'productlist2_item_model.dart';
import 'productgrid_item_model.dart';

/// This class defines the variables used in the [produk_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProdukModel {
  Rx<List<Productlist2ItemModel>> productlist2ItemList = Rx([
    Productlist2ItemModel(group: "Semua".obs),
    Productlist2ItemModel(group: "Makanan Berat".obs),
    Productlist2ItemModel(group: "Makanan Ringan".obs),
    Productlist2ItemModel(group: "Snack".obs)
  ]);

  Rx<List<ProductgridItemModel>> productgridItemList = Rx([
    ProductgridItemModel(
        image: ImageConstant.imgRectangle4135x140.obs,
        title: "Makanan Berat".obs,
        restaurantName: "Kantin Barokah".obs,
        productName: "Mie Ayam".obs,
        price: "IDR 10.000".obs,
        quantitySold: "100 terjual".obs),
    ProductgridItemModel(
        image: ImageConstant.imgRectangle42.obs,
        title: "Makanan Berat".obs,
        restaurantName: "Kantin Mbak Ti".obs,
        productName: "Rawon Bledek ".obs,
        price: "IDR 21.000".obs,
        quantitySold: "100 terjual".obs),
    ProductgridItemModel(
        image: ImageConstant.imgRectangle43.obs,
        title: "Seragam".obs,
        productName: "Kemeja Putih".obs,
        price: "IDR 150.000".obs,
        quantitySold: "100 terjual".obs),
    ProductgridItemModel(
        image: ImageConstant.imgRectangle44.obs,
        title: "Seragam".obs,
        productName: "Dasi abu-abu ".obs,
        price: "IDR 10.000".obs,
        quantitySold: "100 terjual".obs)
  ]);
}
