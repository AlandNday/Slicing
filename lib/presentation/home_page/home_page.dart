import '../home_page/widgets/viewhierarchy_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:marianus_aland_gian_s_application1/core/app_export.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
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
                    itemCount: controller
                        .homeModelObj.value.viewhierarchyItemList.value.length,
                    itemBuilder: (context, index) {
                      ViewhierarchyItemModel model = controller.homeModelObj
                          .value.viewhierarchyItemList.value[index];
                      return ViewhierarchyItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
