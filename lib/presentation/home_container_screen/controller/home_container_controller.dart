import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/home_container_screen/models/home_container_model.dart';

/// A controller class for the HomeContainerScreen.
///
/// This class manages the state of the HomeContainerScreen, including the
/// current homeContainerModelObj
class HomeContainerController extends GetxController {
  Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;
}
