import 'controller/riwayat_pembayaran_controller.dart';
import 'models/riwayat_pembayaran_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_elevated_button.dart';

class RiwayatPembayaranPage extends StatelessWidget {
  RiwayatPembayaranPage({Key? key})
      : super(
          key: key,
        );

  RiwayatPembayaranController controller =
      Get.put(RiwayatPembayaranController(RiwayatPembayaranModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "lbl_pembayaran_qr".tr,
                        style: CustomTextStyles.titleSmallBlack900,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "msg_25_11_21_09_00_12".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Divider(),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "lbl_penerimaan_qr".tr,
                        style: CustomTextStyles.titleSmallBlack900,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "msg_25_11_21_09_00_122".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Divider(),
                    Spacer(),
                    CustomElevatedButton(
                      height: 82.v,
                      text: "lbl_tampilkan_qris".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary1,
                      buttonTextStyle: theme.textTheme.titleLarge!,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
