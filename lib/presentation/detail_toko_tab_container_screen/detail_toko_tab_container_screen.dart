import 'controller/detail_toko_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/presentation/detail_toko_page/detail_toko_page.dart';
import 'package:marianus_aland_gian_s_application1/presentation/toko_page/toko_page.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class DetailTokoTabContainerScreen
    extends GetWidget<DetailTokoTabContainerController> {
  const DetailTokoTabContainerScreen({Key? key})
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
            padding: EdgeInsets.only(top: 11.v),
            child: Column(
              children: [
                _buildTabview(),
                SizedBox(
                  height: 709.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      DetailTokoPage(),
                      TokoPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
        text: "lbl_kantin_mbak_ti".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        Container(
          height: 38.43.v,
          width: 33.h,
          margin: EdgeInsets.fromLTRB(26.h, 16.v, 26.h, 21.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAntDesignShop,
                height: 27.adaptSize,
                width: 27.adaptSize,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  top: 11.v,
                  right: 6.h,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 13.v,
                  width: 15.h,
                  margin: EdgeInsets.only(
                    left: 18.h,
                    bottom: 24.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onErrorContainer,
                    borderRadius: BorderRadius.circular(
                      7.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 1.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 22.h,
                    right: 5.h,
                    bottom: 24.v,
                  ),
                  child: Text(
                    "lbl_2".tr,
                    style: CustomTextStyles.labelMediumBold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
      height: 30.v,
      width: 302.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.blueGray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "lbl_produk".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_toko".tr,
            ),
          ),
        ],
      ),
    );
  }
}
