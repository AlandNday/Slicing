import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/spash_screen_one_screen/models/spash_screen_one_model.dart';

/// A controller class for the SpashScreenOneScreen.
///
/// This class manages the state of the SpashScreenOneScreen, including the
/// current spashScreenOneModelObj
class SpashScreenOneController extends GetxController {
  Rx<SpashScreenOneModel> spashScreenOneModelObj = SpashScreenOneModel().obs;
}
