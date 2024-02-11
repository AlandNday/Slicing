import 'controller/spash_screen_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class SpashScreenThreeScreen extends GetWidget<SpashScreenThreeController> {
  const SpashScreenThreeScreen({Key? key})
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
            children: [
              _buildVector(),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "lbl_menyenangkan".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              Container(
                width: 317.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 33.h,
                ),
                child: Text(
                  "msg_belanja_dengan_pengalaman".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargePrimaryContainer,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildAyoMulai(),
      ),
    );
  }

  /// Section Widget
  Widget _buildVector() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: 59.v,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 26.h,
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
              height: 252.v,
              width: 289.h,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle41,
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
    );
  }

  /// Section Widget
  Widget _buildAyoMulai() {
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
            text: "lbl_ayo_mulai".tr,
          ),
        ],
      ),
    );
  }
}
