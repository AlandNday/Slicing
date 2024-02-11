import '../produk_page/widgets/productgrid_item_widget.dart';
import '../produk_page/widgets/productlist2_item_widget.dart';
import 'controller/produk_controller.dart';
import 'models/productgrid_item_model.dart';
import 'models/productlist2_item_model.dart';
import 'models/produk_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_search_view.dart';

class ProdukPage extends StatelessWidget {
  ProdukPage({Key? key})
      : super(
          key: key,
        );

  ProdukController controller = Get.put(ProdukController(ProdukModel().obs));

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
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 19.h),
                          child: CustomSearchView(
                            controller: controller.searchController,
                            hintText: "lbl_cari_disini".tr,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Text(
                          "lbl_cari_apa2".tr,
                          style:
                              CustomTextStyles.titleMediumPrimaryContainerBold,
                        ),
                        SizedBox(height: 6.v),
                        _buildProductList(),
                        SizedBox(height: 24.v),
                        _buildProductGrid(),
                      ],
                    ),
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
  Widget _buildProductList() {
    return SizedBox(
      height: 25.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount:
              controller.produkModelObj.value.productlist2ItemList.value.length,
          itemBuilder: (context, index) {
            Productlist2ItemModel model = controller
                .produkModelObj.value.productlist2ItemList.value[index];
            return Productlist2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductGrid() {
    return Padding(
      padding: EdgeInsets.only(right: 19.h),
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
              controller.produkModelObj.value.productgridItemList.value.length,
          itemBuilder: (context, index) {
            ProductgridItemModel model = controller
                .produkModelObj.value.productgridItemList.value[index];
            return ProductgridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
