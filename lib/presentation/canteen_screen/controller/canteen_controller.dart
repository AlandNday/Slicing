import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/canteen_screen/models/canteen_model.dart';

/// A controller class for the CanteenScreen.
///
/// This class manages the state of the CanteenScreen, including the
/// current canteenModelObj
class CanteenController extends GetxController {
  Rx<CanteenModel> canteenModelObj = CanteenModel().obs;
}
