import '../controller/canteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CanteenScreen.
///
/// This class ensures that the CanteenController is created when the
/// CanteenScreen is first loaded.
class CanteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CanteenController());
  }
}
