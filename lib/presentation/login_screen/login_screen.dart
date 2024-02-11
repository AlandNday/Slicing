import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';
import 'package:marianus_aland_gian_s_application1/core/utils/validation_functions.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_elevated_button.dart';
import 'package:marianus_aland_gian_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 333.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.77, 1),
                            end: Alignment(0.2, 0.1),
                            colors: [
                              appTheme.orange700,
                              appTheme.amber400,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.15,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgEllipse30,
                        height: 325.v,
                        width: 265.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 45.v),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 181.h,
                        margin: EdgeInsets.only(top: 92.v),
                        child: Text(
                          "lbl_sidigs_pos".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.displayMedium,
                        ),
                      ),
                    ),
                    _buildLoginForm(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 531.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 55.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.customBorderTL35,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 33.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_username2".tr,
                        style: CustomTextStyles.bodyMediumOpenSansBluegray600,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    CustomTextFormField(
                      controller: controller.userNameController,
                      hintText: "lbl_username2".tr,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(12.h, 12.v, 28.h, 12.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLock,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 48.v,
                      ),
                      validator: (value) {
                        if (!isText(value)) {
                          return "err_msg_please_enter_valid_text".tr;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 17.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_password2".tr,
                        style: CustomTextStyles.bodyMediumOpenSansBluegray600,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Obx(
                      () => CustomTextFormField(
                        controller: controller.passwordController,
                        hintText: "lbl_password2".tr,
                        hintStyle: CustomTextStyles.bodyMediumPoppinsOnError,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(12.h, 12.v, 28.h, 12.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 48.v,
                        ),
                        suffix: InkWell(
                          onTap: () {
                            controller.isShowPassword.value =
                                !controller.isShowPassword.value;
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEye,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 48.v,
                        ),
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: controller.isShowPassword.value,
                        contentPadding: EdgeInsets.symmetric(vertical: 13.v),
                      ),
                    ),
                    SizedBox(height: 48.v),
                    CustomElevatedButton(
                      height: 50.v,
                      text: "lbl_login".tr,
                      buttonStyle: CustomButtonStyles.fillPrimaryTL25,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallRobotoOnErrorContainer,
                    ),
                    SizedBox(height: 48.v),
                    Container(
                      width: 298.h,
                      margin: EdgeInsets.symmetric(horizontal: 19.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_dengan_masuk_atau2".tr,
                              style: CustomTextStyles.bodySmallPoppinsff122d4d,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "msg_ketentuan_layanan".tr,
                              style: CustomTextStyles.bodySmallPoppinsfff57700,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_dan".tr,
                              style: CustomTextStyles.bodySmallPoppinsff122d4d,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "msg_kebijakan_privasi".tr,
                              style: CustomTextStyles.bodySmallPoppinsfff57700,
                            ),
                            TextSpan(
                              text: "lbl".tr,
                              style: CustomTextStyles.bodySmallPoppinsff122d4d,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_lupa_password".tr,
                            style: CustomTextStyles.bodySmallOpenSansff122d4d,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_klik_disini".tr,
                            style: CustomTextStyles.labelLargefff57700.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 50.v),
                child: Text(
                  "msg_masuk_ke_akun_kamu".tr,
                  style: CustomTextStyles.titleMediumPrimaryContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
