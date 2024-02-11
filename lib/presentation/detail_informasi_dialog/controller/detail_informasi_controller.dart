import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/detail_informasi_dialog/models/detail_informasi_model.dart';

/// A controller class for the DetailInformasiDialog.
///
/// This class manages the state of the DetailInformasiDialog, including the
/// current detailInformasiModelObj
class DetailInformasiController extends GetxController {
  Rx<DetailInformasiModel> detailInformasiModelObj = DetailInformasiModel().obs;
}
