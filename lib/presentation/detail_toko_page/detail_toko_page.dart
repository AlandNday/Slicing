import '../detail_toko_page/widgets/productgrid1_item_widget.dart';
import 'controller/detail_toko_controller.dart';
import 'models/detail_toko_model.dart';
import 'models/productgrid1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_search_view.dart';

class DetailTokoPage extends StatelessWidget {
  DetailTokoPage({Key? key})
      : super(
          key: key,
        );

  DetailTokoController controller =
      Get.put(DetailTokoController(DetailTokoModel().obs));

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
                SizedBox(height: 114.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSearchView(
                        controller: controller.searchController,
                        hintText: "lbl_cari_disini".tr,
                      ),
                      SizedBox(height: 14.v),
                      Text(
                        "lbl_daftar_produk".tr,
                        style: CustomTextStyles.titleMediumPrimaryContainerBold,
                      ),
                      SizedBox(height: 16.v),
                      _buildProductGrid(),
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
  Widget _buildProductGrid() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 213.v,
          crossAxisCount: 2,
          mainAxisSpacing: 14.h,
          crossAxisSpacing: 14.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller
            .detailTokoModelObj.value.productgrid1ItemList.value.length,
        itemBuilder: (context, index) {
          Productgrid1ItemModel model = controller
              .detailTokoModelObj.value.productgrid1ItemList.value[index];
          return Productgrid1ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
