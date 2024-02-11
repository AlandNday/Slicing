import '../controller/home_controller.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 134.v,
            width: 144.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 135.v,
                    width: 140.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Obx(
                          () => CustomImageView(
                            imagePath: viewhierarchyItemModelObj
                                .makananBeratImage!.value,
                            height: 135.v,
                            width: 140.h,
                            radius: BorderRadius.circular(
                              8.h,
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 69.h,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              bottom: 4.v,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.fillCyanB.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Obx(
                              () => Text(
                                viewhierarchyItemModelObj
                                    .makananBeratText!.value,
                                style: CustomTextStyles
                                    .bodySmallOpenSansOnErrorContainer_1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 61.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 83.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.orange,
                          child: Obx(
                            () => Text(
                              viewhierarchyItemModelObj
                                  .kantinBarokahText!.value,
                              style: CustomTextStyles
                                  .bodySmallOpenSansOnErrorContainer10,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVector5,
                          height: 7.v,
                          width: 4.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Obx(
              () => Text(
                viewhierarchyItemModelObj.mieAyamText!.value,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    viewhierarchyItemModelObj.idr10000Text!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 8.v,
                    bottom: 3.v,
                  ),
                  child: Obx(
                    () => Text(
                      viewhierarchyItemModelObj.terjualText!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
