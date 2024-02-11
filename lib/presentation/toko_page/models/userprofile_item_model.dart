import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userName,
    this.specialization,
    this.followingCount,
    this.id,
  }) {
    userName = userName ?? Rx("Kantin Barokah");
    specialization = specialization ?? Rx("Spesialis Makanan Berat");
    followingCount = followingCount ?? Rx("mengikuti");
    id = id ?? Rx("");
  }

  Rx<String>? userName;

  Rx<String>? specialization;

  Rx<String>? followingCount;

  Rx<String>? id;
}
