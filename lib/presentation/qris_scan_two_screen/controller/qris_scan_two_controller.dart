import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/qris_scan_two_screen/models/qris_scan_two_model.dart';

/// A controller class for the QrisScanTwoScreen.
///
/// This class manages the state of the QrisScanTwoScreen, including the
/// current qrisScanTwoModelObj
class QrisScanTwoController extends GetxController {
  Rx<QrisScanTwoModel> qrisScanTwoModelObj = QrisScanTwoModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.spashScreenOneScreen,
      );
    });
  }
}
