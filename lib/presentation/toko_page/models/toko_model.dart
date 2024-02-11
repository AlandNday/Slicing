import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [toko_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TokoModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userName: "Kantin Barokah".obs,
        specialization: "Spesialis Makanan Berat".obs,
        followingCount: "mengikuti".obs),
    UserprofileItemModel(
        userName: "Kantin Mbak Ti".obs,
        specialization: "Spesialis Kopi-kopian".obs,
        followingCount: "+ ikuti".obs),
    UserprofileItemModel(
        userName: "Koperasi Ken Arok".obs,
        specialization: "Sedia Peralatan Sekolah".obs,
        followingCount: "+ ikuti".obs),
    UserprofileItemModel(
        userName: "Koperasi Garuda ".obs, specialization: "Sedia ATk".obs)
  ]);
}
