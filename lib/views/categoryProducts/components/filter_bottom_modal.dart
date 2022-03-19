import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/categoryProducts/components/filter.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/page_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller.dart';

class FilterBottomModal extends StatelessWidget {
  const FilterBottomModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      child: Column(
        children: [
          SizedBox(
              width: sizeFromWidth(4),
              child: const Divider(
                color: mintGreenColor,
                thickness: 5,
              )),
          const PageTitle(
            title: "Order By",
          ),
          GetBuilder<CategoryProductController>(
            init: CategoryProductController(),
            builder: (controller) => ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 20),
                itemCount: Filter.options.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                      onTap: () => controller.changeFilterIndex(index),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: Filter.options[index],
                            color: controller.filterIndex == index
                                ? appPurpleColor
                                : const Color(0xffBCBCBC),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            verticalMargin: 20,
                          ),
                          controller.filterIndex == index
                              ? const Icon(
                                  Icons.check,
                                  color: appPurpleColor,
                                )
                              : const Text("")
                        ],
                      ),
                    )),
          ),
          SizedBox(
              width: sizeFromWidth(2),
              child: CustomButton(
                text: "Apply",
                buttonColor: appPurpleColor,
                fontColor: Colors.white,
                onPress: () => Get.back(),
              ))
        ],
      ),
    );
  }
}
