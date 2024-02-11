import '../controller/qris_scan_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QrisScanTwoScreen.
///
/// This class ensures that the QrisScanTwoController is created when the
/// QrisScanTwoScreen is first loaded.
class QrisScanTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrisScanTwoController());
  }
}
