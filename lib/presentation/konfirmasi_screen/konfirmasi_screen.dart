import 'controller/konfirmasi_controller.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_drop_down.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_elevated_button.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class KonfirmasiScreen extends GetWidget<KonfirmasiController> {
  const KonfirmasiScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  CustomTextFormField(
                    controller: controller.canteenController,
                    hintText: "lbl_kantin_cak_ji".tr,
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 111.v,
                    ),
                    borderDecoration:
                        TextFormFieldStyleHelper.fillOnErrorContainer,
                    fillColor: theme.colorScheme.onErrorContainer,
                  ),
                  SizedBox(height: 315.v),
                  _buildKonfirmasi(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildCheckout(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 30.v,
          bottom: 22.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_pesanan_kamu".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildKonfirmasi() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 33.v,
                  ),
                  child: Text(
                    "msg_pilih_aksi_pesanan".tr,
                    style: CustomTextStyles.bodySmallOpenSansBlack900,
                  ),
                ),
                Column(
                  children: [
                    CustomDropDown(
                      width: 122.h,
                      hintText: "lbl_makan_ditempat".tr,
                      items: controller
                          .konfirmasiModelObj.value.dropdownItemList!.value,
                      onChanged: (value) {
                        controller.onSelected(value);
                      },
                    ),
                    SizedBox(height: 7.v),
                    SizedBox(
                      width: 122.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 1.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "lbl_pukul".tr,
                              style: CustomTextStyles.bodySmallOpenSansBlack900,
                            ),
                          ),
                          Container(
                            width: 67.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.outlinePrimaryContainer,
                            child: Text(
                              "lbl_14_00".tr,
                              style: CustomTextStyles
                                  .bodyMediumOpenSansBluegray900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Divider(),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Text(
                    "lbl_saldo_kamu".tr,
                    style: CustomTextStyles.bodySmallOpenSansBlack900,
                  ),
                ),
                Text(
                  "lbl_idr_100_000".tr,
                  style: CustomTextStyles.titleSmallPrimary,
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckout() {
    return Container(
      margin: EdgeInsets.only(left: 20.h),
      decoration: AppDecoration.outlineBlue70019,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 19.v),
            child: Text(
              "lbl_subtotal".tr,
              style: CustomTextStyles.bodySmallOpenSansBluegray60012,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 18.v,
              bottom: 17.v,
            ),
            child: Text(
              "lbl_idr_30_000".tr,
              style: CustomTextStyles.titleSmallPrimary,
            ),
          ),
          CustomElevatedButton(
            height: 56.v,
            width: 120.h,
            text: "lbl_checkout".tr,
            margin: EdgeInsets.only(left: 8.h),
            buttonStyle: CustomButtonStyles.fillPrimary1,
            buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainer,
          ),
        ],
      ),
    );
  }
}
