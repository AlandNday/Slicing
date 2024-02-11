import '../toko_page/widgets/userprofile_item_widget.dart';
import 'controller/toko_controller.dart';
import 'models/toko_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_elevated_button.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_outlined_button.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_search_view.dart';

class TokoPage extends StatelessWidget {
  TokoPage({Key? key})
      : super(
          key: key,
        );

  TokoController controller = Get.put(TokoController(TokoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSearchView(
                        controller: controller.searchController,
                        hintText: "lbl_cari_disini".tr,
                      ),
                      SizedBox(height: 20.v),
                      Text(
                        "lbl_cari_apa2".tr,
                        style: CustomTextStyles.titleMediumPrimaryContainerBold,
                      ),
                      SizedBox(height: 6.v),
                      Row(
                        children: [
                          CustomElevatedButton(
                            height: 25.v,
                            width: 69.h,
                            text: "lbl_semua".tr,
                            buttonStyle:
                                CustomButtonStyles.fillPrimaryContainer,
                            buttonTextStyle: CustomTextStyles
                                .bodySmallOpenSansOnErrorContainer,
                          ),
                          Container(
                            width: 76.h,
                            margin: EdgeInsets.only(left: 8.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.h,
                              vertical: 2.v,
                            ),
                            decoration:
                                AppDecoration.outlineBluegray500.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12,
                            ),
                            child: Text(
                              "lbl_koperasi".tr,
                              style:
                                  CustomTextStyles.bodySmallOpenSansBluegray500,
                            ),
                          ),
                          CustomOutlinedButton(
                            width: 68.h,
                            text: "lbl_kantin".tr,
                            margin: EdgeInsets.only(left: 8.h),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.v),
                      _buildUserProfile(),
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
  Widget _buildUserProfile() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 13.v,
          );
        },
        itemCount:
            controller.tokoModelObj.value.userprofileItemList.value.length,
        itemBuilder: (context, index) {
          UserprofileItemModel model =
              controller.tokoModelObj.value.userprofileItemList.value[index];
          return UserprofileItemWidget(
            model,
          );
        },
      ),
    );
  }
}
