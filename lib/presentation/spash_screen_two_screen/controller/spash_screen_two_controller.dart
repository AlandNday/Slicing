import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/spash_screen_two_screen/models/spash_screen_two_model.dart';

/// A controller class for the SpashScreenTwoScreen.
///
/// This class manages the state of the SpashScreenTwoScreen, including the
/// current spashScreenTwoModelObj
class SpashScreenTwoController extends GetxController {
  Rx<SpashScreenTwoModel> spashScreenTwoModelObj = SpashScreenTwoModel().obs;
}
