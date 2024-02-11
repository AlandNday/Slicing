import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "QRIS Scan Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.qrisScanTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "spash screen- One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.spashScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "spash screen- Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.spashScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "spash screen- Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.spashScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Canteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.canteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Keinginan".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.keinginanScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Konfirmasi".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.konfirmasiScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Detail Toko - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.detailTokoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Done".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.doneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
