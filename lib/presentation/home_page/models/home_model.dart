import '../../../core/app_export.dart';
import 'viewhierarchy_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<ViewhierarchyItemModel>> viewhierarchyItemList = Rx([
    ViewhierarchyItemModel(
        makananBeratImage: ImageConstant.imgRectangle4135x140.obs,
        makananBeratText: "Makanan Berat".obs,
        kantinBarokahText: "Kantin Barokah".obs,
        mieAyamText: "Mie Ayam".obs,
        idr10000Text: "IDR 10.000".obs,
        terjualText: "100 terjual".obs),
    ViewhierarchyItemModel(
        makananBeratImage: ImageConstant.imgRectangle42.obs,
        makananBeratText: "Makanan Berat".obs,
        kantinBarokahText: "Kantin Mbak Ti".obs,
        mieAyamText: "Rawon Bledek ".obs,
        idr10000Text: "IDR 21.000".obs,
        terjualText: "100 terjual".obs),
    ViewhierarchyItemModel(
        makananBeratImage: ImageConstant.imgRectangle43.obs,
        makananBeratText: "Seragam".obs,
        mieAyamText: "Kemeja Putih".obs,
        idr10000Text: "IDR 150.000".obs,
        terjualText: "100 terjual".obs),
    ViewhierarchyItemModel(
        makananBeratImage: ImageConstant.imgRectangle44.obs,
        makananBeratText: "Seragam".obs,
        mieAyamText: "Dasi abu-abu ".obs,
        idr10000Text: "IDR 10.000".obs,
        terjualText: "100 terjual".obs)
  ]);
}
