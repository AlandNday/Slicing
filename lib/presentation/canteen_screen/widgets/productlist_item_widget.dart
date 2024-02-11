import '../controller/canteen_controller.dart';
import '../models/productlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  ProductlistItemWidget(
    this.productlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductlistItemModel productlistItemModelObj;

  var controller = Get.find<CanteenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 135.v,
            width: 140.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: productlistItemModelObj.productImage!.value,
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
                        productlistItemModelObj.productName!.value,
                        style: CustomTextStyles
                            .bodySmallOpenSansOnErrorContainer_1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  productlistItemModelObj.productTitle!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage7,
                height: 17.adaptSize,
                width: 17.adaptSize,
                margin: EdgeInsets.only(
                  left: 54.h,
                  bottom: 2.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  productlistItemModelObj.productPrice!.value,
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
                    productlistItemModelObj.productSold!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
