import '../controller/detail_toko_controller.dart';
import '../models/productgrid1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Productgrid1ItemWidget extends StatelessWidget {
  Productgrid1ItemWidget(
    this.productgrid1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productgrid1ItemModel productgrid1ItemModelObj;

  var controller = Get.find<DetailTokoController>();

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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 135.v,
            width: 140.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: productgrid1ItemModelObj.image!.value,
                    height: 135.v,
                    width: 140.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      bottom: 4.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage7,
                          height: 15.v,
                          width: 17.h,
                          alignment: Alignment.centerRight,
                        ),
                        Container(
                          width: 50.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillCyanB.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Obx(
                            () => Text(
                              productgrid1ItemModelObj.minuman!.value,
                              style: CustomTextStyles
                                  .bodySmallOpenSansOnErrorContainer_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              productgrid1ItemModelObj.title!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 3.v),
          Row(
            children: [
              Obx(
                () => Text(
                  productgrid1ItemModelObj.price!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30.h,
                  top: 8.v,
                  bottom: 3.v,
                ),
                child: Obx(
                  () => Text(
                    productgrid1ItemModelObj.soldCount!.value,
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
