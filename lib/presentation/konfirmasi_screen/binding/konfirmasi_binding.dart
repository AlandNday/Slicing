import '../controller/konfirmasi_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KonfirmasiScreen.
///
/// This class ensures that the KonfirmasiController is created when the
/// KonfirmasiScreen is first loaded.
class KonfirmasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KonfirmasiController());
  }
}
