import 'controller/qris_scan_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/custom_app_bar.dart';

class QrisScanTwoScreen extends GetWidget<QrisScanTwoController> {
  const QrisScanTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                height: 651.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topLeft, children: [
                  _buildTwentySeven(),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(top: 40.v),
                          child: SizedBox(
                              width: 188.h,
                              child:
                                  Divider(color: theme.colorScheme.primary)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle305,
                      height: 582.v,
                      width: 375.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 583.v,
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(vertical: 97.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup340),
                                  fit: BoxFit.cover)),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 52.h),
                                        decoration: AppDecoration
                                            .outlineBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 1.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1.h),
                                                  child: _buildThumbsUp()),
                                              SizedBox(height: 184.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1.h),
                                                  child: _buildThumbsUp())
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 24.v,
                                        width: double.maxFinite,
                                        margin: EdgeInsets.only(bottom: 87.v),
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment(0.5, 0),
                                                end: Alignment(0.5, 1),
                                                colors: [
                                              theme.colorScheme.primary,
                                              appTheme.gray400.withOpacity(0)
                                            ]))))
                              ])))
                ])),
            bottomNavigationBar: _buildTwentyFour()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 20.h, top: 30.v, bottom: 22.v)),
        title: AppbarSubtitle(
            text: "lbl_bayar".tr, margin: EdgeInsets.only(left: 12.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTwentySeven() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 611.v),
            padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 6.v),
            decoration: AppDecoration.outlineBlue,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 41.h, top: 6.v, bottom: 3.v),
                      child: Text("lbl_scan_qr".tr,
                          style: theme.textTheme.labelLarge)),
                  Padding(
                      padding: EdgeInsets.only(top: 9.v),
                      child: Text("msg_riwayat_pembayaran".tr,
                          style:
                              CustomTextStyles.bodySmallOpenSansBluegray60012))
                ])));
  }

  /// Section Widget
  Widget _buildTwentyFour() {
    return Container(
        margin: EdgeInsets.only(left: 94.h, right: 115.h, bottom: 23.v),
        decoration: AppDecoration.orange,
        child:
            Text("lbl_tampilkan_qris".tr, style: theme.textTheme.titleLarge));
  }

  /// Common widget
  Widget _buildThumbsUp() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomImageView(
          imagePath: ImageConstant.imgThumbsUp,
          height: 54.v,
          width: 51.h,
          radius: BorderRadius.circular(19.h)),
      CustomImageView(
          imagePath: ImageConstant.imgContrast,
          height: 54.v,
          width: 51.h,
          radius: BorderRadius.circular(19.h))
    ]);
  }
}
