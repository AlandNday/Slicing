import '../keinginan_screen/widgets/productlist1_item_widget.dart';
import 'controller/keinginan_controller.dart';
import 'models/productlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:marianus_aland_gian_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class KeinginanScreen extends GetWidget<KeinginanController> {
  const KeinginanScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(),
        body: Container(
          decoration: AppDecoration.fillGray,
          child: Obx(
            () => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 213.v,
                crossAxisCount: 2,
                mainAxisSpacing: 14.h,
                crossAxisSpacing: 14.h,
              ),
              physics: BouncingScrollPhysics(),
              itemCount: controller
                  .keinginanModelObj.value.productlist1ItemList.value.length,
              itemBuilder: (context, index) {
                Productlist1ItemModel model = controller
                    .keinginanModelObj.value.productlist1ItemList.value[index];
                return Productlist1ItemWidget(
                  model,
                );
              },
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
        text: "msg_daftar_keinginan".tr,
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
}
