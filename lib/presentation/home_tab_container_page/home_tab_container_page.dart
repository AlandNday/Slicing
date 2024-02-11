import 'controller/home_tab_container_controller.dart';
import 'models/home_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/home_page/home_page.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_search_view.dart';

class HomeTabContainerPage extends StatelessWidget {
  HomeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  HomeTabContainerController controller =
      Get.put(HomeTabContainerController(HomeTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              _buildWelcomeAngga(),
              SizedBox(height: 16.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            right: 19.h,
                          ),
                          child: CustomSearchView(
                            controller: controller.searchController,
                            hintText: "lbl_cari_disini".tr,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      SizedBox(height: 23.v),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "lbl_kategori".tr,
                          style:
                              CustomTextStyles.titleMediumPrimaryContainerBold,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      _buildTabview(),
                      SizedBox(
                        height: 455.v,
                        child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            HomePage(),
                            HomePage(),
                            HomePage(),
                            HomePage(),
                          ],
                        ),
                      ),
                    ],
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
  Widget _buildWelcomeAngga() {
    return SizedBox(
      height: 246.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomAppBar(
            height: 175.v,
            title: AppbarTitle(
              text: "msg_selamat_datang_angga_selamat".tr,
              margin: EdgeInsets.only(
                left: 20.h,
                top: 25.v,
                bottom: 96.v,
              ),
            ),
            actions: [
              AppbarTrailingCircleimage(
                imagePath: ImageConstant.imgFotoProfil2,
                margin: EdgeInsets.fromLTRB(19.h, 23.v, 19.h, 96.v),
              ),
            ],
            styleType: Style.bgFill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 10.h,
                right: 19.h,
              ),
              padding: EdgeInsets.fromLTRB(19.h, 7.v, 10.h, 7.v),
              decoration: AppDecoration.outlineOrangeA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_saldo".tr,
                                style: CustomTextStyles
                                    .titleMediumPrimaryContainer18,
                              ),
                              SizedBox(height: 1.v),
                              Text(
                                "lbl_e_money_rp".tr,
                                style: CustomTextStyles
                                    .bodyMediumOpenSansPrimaryContainer,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.v),
                          child: Text(
                            "lbl_500_000".tr,
                            style: CustomTextStyles.headlineSmallOrange70001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Divider(),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildPaymentOptions(
                          scanImage: ImageConstant.imgIconlyBoldWallet,
                          paymentText: "lbl_topup".tr,
                        ),
                        _buildPaymentOptions(
                          scanImage: ImageConstant.imgIconlyBoldScan,
                          paymentText: "lbl_bayar".tr,
                        ),
                        Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIconlyBoldSwap,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                            ),
                            Text(
                              "lbl_riwayat".tr,
                              style: CustomTextStyles.bodySmallOpenSans12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 25.v,
      width: 355.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.onErrorContainer,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.blueGray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(
            12.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_semua".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_makanan_berat".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_makanan_ringan".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_snack".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPaymentOptions({
    required String scanImage,
    required String paymentText,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: scanImage,
          height: 40.adaptSize,
          width: 40.adaptSize,
        ),
        Text(
          paymentText,
          style: CustomTextStyles.bodySmallOpenSans12.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
      ],
    );
  }
}
