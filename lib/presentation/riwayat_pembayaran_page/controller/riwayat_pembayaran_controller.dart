import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/riwayat_pembayaran_page/models/riwayat_pembayaran_model.dart';

/// A controller class for the RiwayatPembayaranPage.
///
/// This class manages the state of the RiwayatPembayaranPage, including the
/// current riwayatPembayaranModelObj
class RiwayatPembayaranController extends GetxController {
  RiwayatPembayaranController(this.riwayatPembayaranModelObj);

  Rx<RiwayatPembayaranModel> riwayatPembayaranModelObj;
}
