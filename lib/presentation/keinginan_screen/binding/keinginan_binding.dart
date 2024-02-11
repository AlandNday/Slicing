import '../controller/keinginan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KeinginanScreen.
///
/// This class ensures that the KeinginanController is created when the
/// KeinginanScreen is first loaded.
class KeinginanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KeinginanController());
  }
}
