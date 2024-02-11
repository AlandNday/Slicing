import 'controller/detail_produk_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_elevated_button.dart';

class DetailProdukOneBottomsheet extends StatelessWidget {
  DetailProdukOneBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  DetailProdukOneController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 109.h,
              child: Divider(
                color: appTheme.gray400,
              ),
            ),
            SizedBox(height: 13.v),
            _buildMakananBeratRow(),
            SizedBox(height: 16.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "lbl_mie_ayam".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
            ),
            SizedBox(height: 1.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 2.h,
                  right: 96.h,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_idr_10_000".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 21.v,
                        bottom: 7.v,
                      ),
                      child: Text(
                        "lbl_100_terjual".tr,
                        style: CustomTextStyles.bodySmall12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 13.v),
            _buildDeskripsiColumn(),
            SizedBox(height: 22.v),
            CustomElevatedButton(
              height: 37.v,
              width: 135.h,
              text: "lbl_pesan".tr,
              buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
              alignment: Alignment.centerRight,
            ),
            SizedBox(height: 23.v),
            _buildFotoProfilTwoRow(),
            SizedBox(height: 23.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMakananBeratRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 3.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            height: 25.v,
            width: 107.h,
            text: "lbl_makanan_berat".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryContainer,
            buttonTextStyle: CustomTextStyles.bodySmallOpenSansOnErrorContainer,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage9,
            height: 25.adaptSize,
            width: 25.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeskripsiColumn() {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_deskripsi".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 1.v),
          SizedBox(
            width: 300.h,
            child: Text(
              "msg_ini_adalah_rawon2".tr,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBluegray500,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFotoProfilTwoRow() {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFotoProfil256x56,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 10.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "lbl_kantin_mbak_ti".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Text(
                  "msg_smk_telkom_malang".tr,
                  style: CustomTextStyles.bodyMediumBluegray500,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 46.h,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 42.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.orange,
            child: Text(
              "lbl_ikuti2".tr,
              style: CustomTextStyles.bodySmallOnErrorContainer10,
            ),
          ),
        ],
      ),
    );
  }
}
