import 'controller/done_controller.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_elevated_button.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class DoneScreen extends GetWidget<DoneController> {
  const DoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 54.h,
                vertical: 29.v,
              ),
              decoration: AppDecoration.fillOnErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 210.h,
                    margin: EdgeInsets.only(
                      left: 28.h,
                      right: 27.h,
                    ),
                    child: Text(
                      "msg_yeay_pesanan".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumBold.copyWith(
                        height: 1.75,
                      ),
                    ),
                  ),
                  SizedBox(height: 19.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage37,
                    height: 159.v,
                    width: 239.h,
                  ),
                  SizedBox(height: 26.v),
                  Text(
                    "msg_terimakasih_sudah".tr,
                    style: CustomTextStyles.bodySmallOpenSansBluegray60012,
                  ),
                  SizedBox(height: 78.v),
                  CustomElevatedButton(
                    height: 37.v,
                    text: "msg_lihat_riwayat_pembelian".tr,
                    buttonTextStyle:
                        CustomTextStyles.bodyMediumOnErrorContainer,
                  ),
                  SizedBox(height: 10.v),
                  CustomOutlinedButton(
                    height: 37.v,
                    text: "lbl_kembali".tr,
                    buttonStyle: CustomButtonStyles.outlinePrimary,
                    buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
                  ),
                  SizedBox(height: 10.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 42.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 30.v,
          bottom: 22.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_checkout".tr,
        margin: EdgeInsets.only(left: 5.h),
      ),
      styleType: Style.bgFill,
    );
  }
}
