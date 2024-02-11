import 'controller/detail_produk_controller.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_elevated_button.dart';

class DetailProdukBottomsheet extends StatelessWidget {
  DetailProdukBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  DetailProdukController controller;

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
            SizedBox(height: 12.v),
            _buildMakananBeratRow(),
            SizedBox(height: 15.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "lbl_mie_ayam_cak_ji".tr,
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
            SizedBox(height: 17.v),
            CustomElevatedButton(
              height: 37.v,
              width: 135.h,
              text: "lbl_pesan_sekarang".tr,
              buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
              alignment: Alignment.centerRight,
            ),
            SizedBox(height: 7.v),
            _buildFotoProfilTwoRow(),
            SizedBox(height: 7.v),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            height: 25.v,
            width: 107.h,
            text: "lbl_makanan_berat".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryContainer,
            buttonTextStyle: CustomTextStyles.bodySmallOpenSansOnErrorContainer,
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgAntDesignShopPrimary,
            height: 27.adaptSize,
            width: 27.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage9,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(left: 7.h),
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
        vertical: 18.v,
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
          SizedBox(height: 5.v),
          SizedBox(
            width: 301.h,
            child: Text(
              "msg_dijamin_kelezatan".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBluegray500,
            ),
          ),
          SizedBox(height: 19.v),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFotoProfil21,
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
              top: 12.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "lbl_kantin_cak_ji".tr,
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
