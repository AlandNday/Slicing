import 'controller/detail_informasi_controller.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_elevated_button.dart';

class DetailInformasiDialog extends StatelessWidget {
  DetailInformasiDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  DetailInformasiController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317.h,
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_pembayaran_qr".tr,
              style: CustomTextStyles.titleSmallBlack900Bold,
            ),
          ),
          SizedBox(height: 2.v),
          Container(
            width: 218.h,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 63.h,
            ),
            child: Text(
              "msg_berhasil_07_11_21".tr,
              maxLines: 7,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumOpenSansPrimaryContainer,
            ),
          ),
          SizedBox(height: 140.v),
          CustomElevatedButton(
            height: 51.v,
            text: "lbl_kembali".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL25,
            buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainerBold,
          ),
        ],
      ),
    );
  }
}
