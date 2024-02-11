import '../controller/detail_toko_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailTokoTabContainerScreen.
///
/// This class ensures that the DetailTokoTabContainerController is created when the
/// DetailTokoTabContainerScreen is first loaded.
class DetailTokoTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailTokoTabContainerController());
  }
}
