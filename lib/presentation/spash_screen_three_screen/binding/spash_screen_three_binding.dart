import '../controller/spash_screen_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SpashScreenThreeScreen.
///
/// This class ensures that the SpashScreenThreeController is created when the
/// SpashScreenThreeScreen is first loaded.
class SpashScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpashScreenThreeController());
  }
}
