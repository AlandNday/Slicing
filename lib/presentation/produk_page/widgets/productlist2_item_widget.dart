import '../controller/produk_controller.dart';
import '../models/productlist2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Productlist2ItemWidget extends StatelessWidget {
  Productlist2ItemWidget(
    this.productlist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist2ItemModel productlist2ItemModelObj;

  var controller = Get.find<ProdukController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 69.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Obx(
        () => Text(
          productlist2ItemModelObj.group!.value,
          style: CustomTextStyles.bodySmallOpenSansOnErrorContainer,
        ),
      ),
    );
  }
}
