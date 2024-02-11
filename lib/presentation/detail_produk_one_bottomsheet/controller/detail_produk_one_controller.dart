import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/detail_produk_one_bottomsheet/models/detail_produk_one_model.dart';

/// A controller class for the DetailProdukOneBottomsheet.
///
/// This class manages the state of the DetailProdukOneBottomsheet, including the
/// current detailProdukOneModelObj
class DetailProdukOneController extends GetxController {
  Rx<DetailProdukOneModel> detailProdukOneModelObj = DetailProdukOneModel().obs;
}
