import '../controller/keinginan_controller.dart';
import '../models/productlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Productlist1ItemWidget extends StatelessWidget {
  Productlist1ItemWidget(
    this.productlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist1ItemModel productlist1ItemModelObj;

  var controller = Get.find<KeinginanController>();

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
                    imagePath: productlist1ItemModelObj.productImage!.value,
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
                        productlist1ItemModelObj.productName!.value,
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
                  productlist1ItemModelObj.productTitle!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage9,
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
                  productlist1ItemModelObj.productPrice!.value,
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
                    productlist1ItemModelObj.productSold!.value,
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
