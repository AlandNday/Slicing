import '../controller/spash_screen_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SpashScreenTwoScreen.
///
/// This class ensures that the SpashScreenTwoController is created when the
/// SpashScreenTwoScreen is first loaded.
class SpashScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpashScreenTwoController());
  }
}
