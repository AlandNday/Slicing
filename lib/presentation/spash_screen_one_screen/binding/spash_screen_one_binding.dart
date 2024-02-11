import '../controller/spash_screen_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SpashScreenOneScreen.
///
/// This class ensures that the SpashScreenOneController is created when the
/// SpashScreenOneScreen is first loaded.
class SpashScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpashScreenOneController());
  }
}
