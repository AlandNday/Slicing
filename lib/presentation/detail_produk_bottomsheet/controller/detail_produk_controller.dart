import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/detail_produk_bottomsheet/models/detail_produk_model.dart';

/// A controller class for the DetailProdukBottomsheet.
///
/// This class manages the state of the DetailProdukBottomsheet, including the
/// current detailProdukModelObj
class DetailProdukController extends GetxController {
  Rx<DetailProdukModel> detailProdukModelObj = DetailProdukModel().obs;
}
