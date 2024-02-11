import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/keinginan_screen/models/keinginan_model.dart';

/// A controller class for the KeinginanScreen.
///
/// This class manages the state of the KeinginanScreen, including the
/// current keinginanModelObj
class KeinginanController extends GetxController {
  Rx<KeinginanModel> keinginanModelObj = KeinginanModel().obs;
}
