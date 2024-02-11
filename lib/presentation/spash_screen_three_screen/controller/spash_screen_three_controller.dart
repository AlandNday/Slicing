import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/spash_screen_three_screen/models/spash_screen_three_model.dart';

/// A controller class for the SpashScreenThreeScreen.
///
/// This class manages the state of the SpashScreenThreeScreen, including the
/// current spashScreenThreeModelObj
class SpashScreenThreeController extends GetxController {
  Rx<SpashScreenThreeModel> spashScreenThreeModelObj =
      SpashScreenThreeModel().obs;
}
