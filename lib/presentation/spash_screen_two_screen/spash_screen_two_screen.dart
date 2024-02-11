import 'controller/spash_screen_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class SpashScreenTwoScreen extends GetWidget<SpashScreenTwoController> {
  const SpashScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 596.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 136.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup376,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorGray100,
                      height: 261.v,
                      width: 216.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 48.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle4311x322,
                      height: 311.v,
                      width: 322.h,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                      alignment: Alignment.topCenter,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "msg_transaksi_nyaman".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 16.v),
              Container(
                width: 310.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 40.h,
                ),
                child: Text(
                  "msg_gaperlu_ribet_transaksi".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargePrimaryContainer,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildPagerIndicator(),
      ),
    );
  }

  /// Section Widget
  Widget _buildPagerIndicator() {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 30.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 13.v,
            margin: EdgeInsets.only(
              top: 22.v,
              bottom: 5.v,
            ),
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 5,
                activeDotColor: theme.colorScheme.primary,
                dotColor: appTheme.black900.withOpacity(0.15),
                dotHeight: 13.v,
                dotWidth: 13.h,
              ),
            ),
          ),
          CustomElevatedButton(
            width: 120.h,
            text: "lbl_selanjutnya".tr,
          ),
        ],
      ),
    );
  }
}
