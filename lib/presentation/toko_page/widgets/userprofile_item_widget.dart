import '../controller/toko_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<TokoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11.v),
      decoration: AppDecoration.outlineSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle475x75,
            height: 75.adaptSize,
            width: 75.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            margin: EdgeInsets.only(bottom: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofileItemModelObj.userName!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 4.v),
                Obx(
                  () => Text(
                    userprofileItemModelObj.specialization!.value,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                SizedBox(height: 15.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_1000".tr,
                                style: CustomTextStyles.labelMediumff122d4d,
                              ),
                              TextSpan(
                                text: "lbl_pengikut".tr,
                                style: CustomTextStyles.labelMediumff596ea3,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        width: 55.h,
                        margin: EdgeInsets.only(left: 4.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.back,
                        child: Obx(
                          () => Text(
                            userprofileItemModelObj.followingCount!.value,
                            style: CustomTextStyles.bodySmallOnErrorContainer10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
