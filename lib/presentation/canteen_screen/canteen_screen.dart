import '../canteen_screen/widgets/productlist_item_widget.dart';
import 'controller/canteen_controller.dart';
import 'models/productlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class CanteenScreen extends GetWidget<CanteenController> {
  const CanteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFotoProfil256x56,
                        height: 56.adaptSize,
                        width: 56.adaptSize,
                        radius: BorderRadius.circular(
                          28.h,
                        ),
                      ),
                      Container(
                        width: 152.h,
                        margin: EdgeInsets.only(
                          left: 15.h,
                          top: 2.v,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_kantin_mbak_ti2".tr,
                                style: CustomTextStyles.titleMediumff122d4d,
                              ),
                              TextSpan(
                                text: "msg_smk_telkom_malang".tr,
                                style: CustomTextStyles.bodyLargeff122d4d,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildJumlahProduk(),
              SizedBox(height: 11.v),
              Container(
                padding: EdgeInsets.symmetric(vertical: 1.v),
                decoration: AppDecoration.fillGray,
                child: Column(
                  children: [
                    Divider(),
                    SizedBox(height: 14.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "lbl_daftar_produk".tr,
                          style:
                              CustomTextStyles.titleMediumPrimaryContainerBold,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    _buildProductList(),
                    SizedBox(height: 47.v),
                  ],
                ),
              ),
            ],
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
        text: "lbl_kantin_kopsis".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        Container(
          height: 33.adaptSize,
          width: 33.adaptSize,
          margin: EdgeInsets.fromLTRB(26.h, 22.v, 26.h, 21.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAntDesignShop,
                height: 27.adaptSize,
                width: 27.adaptSize,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  top: 6.v,
                  right: 6.h,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(
                    left: 18.h,
                    bottom: 18.v,
                  ),
                  decoration: AppDecoration.white.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
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
  Widget _buildJumlahProduk() {
    return Padding(
      padding: EdgeInsets.only(
        left: 33.h,
        right: 29.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_jumlah_produk".tr,
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl_20".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: SizedBox(
              height: 61.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_produk_terjual".tr,
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl_100".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.h),
            child: SizedBox(
              height: 61.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_jumlah_pengikut".tr,
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl_150".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 213.v,
            crossAxisCount: 2,
            mainAxisSpacing: 14.h,
            crossAxisSpacing: 14.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              controller.canteenModelObj.value.productlistItemList.value.length,
          itemBuilder: (context, index) {
            ProductlistItemModel model = controller
                .canteenModelObj.value.productlistItemList.value[index];
            return ProductlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
