import '../../../core/app_export.dart';
import 'productgrid1_item_model.dart';

/// This class defines the variables used in the [detail_toko_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailTokoModel {
  Rx<List<Productgrid1ItemModel>> productgrid1ItemList = Rx([
    Productgrid1ItemModel(
        image: ImageConstant.imgRectangle4135x140.obs,
        minuman: "Minuman".obs,
        title: "Kopi Hitam".obs,
        price: "IDR 5.000".obs,
        soldCount: "100 terjual".obs),
    Productgrid1ItemModel(
        image: ImageConstant.imgRectangle45.obs,
        minuman: "Minuman".obs,
        title: "Kopi Luwak".obs,
        price: "IDR 5.000".obs,
        soldCount: "100 terjual".obs),
    Productgrid1ItemModel(
        title: "Kopi Gayo".obs,
        price: "IDR 7.000".obs,
        soldCount: "100 terjual".obs),
    Productgrid1ItemModel(
        title: "Kopi Dampit".obs,
        price: "IDR 9.000".obs,
        soldCount: "100 terjual".obs)
  ]);
}
