import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/add_member_model.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/tools.dart';
import 'package:icloudbox/View/Home/Shared/component/add_access_bottomsheet.dart';
import 'package:icloudbox/View/Home/Shared/component/add_member_item.dart';
import 'package:icloudbox/View/Home/Shared/controller/add_member_controller.dart';
import 'package:icloudbox/Widgets/custom_input.dart';
import '../../../../Utils/text_styls.dart';

typedef EditCheckBoxClick = void Function();
typedef ViewCheckBoxClick = void Function();

class AddMemberBottomSheet extends StatelessWidget {
  const AddMemberBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddMemberController());
    return SizedBox(
      height: ScreenUtil().screenHeight - 100.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(
                          'assets/image/auth/img/exit.png',
                          width: 50.w,
                        )),
                  ),
                  Text(
                    'Add Member',
                    style: AppStyles.semiBoldHeadline1,
                  ),
                   GestureDetector(
                    onTap: () {
                      Tools.showModalBottomSheet(
                          context: context,
                          child: AddAccessBottomSheet(
                            member: controller.selectedList ,
                            viewSelected: (isSelected) {
                              isSelected = !isSelected;
                            },
                            editSelected: (isSelected) {
                              isSelected = !isSelected;
                            },
                          ));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Text(
                        'Next',
                        style: AppStyles.semiBoldBody1,
                      ),
                    ),
                  ),
                ],
              ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() {
                      return CustomInput(
                        hintText: 'Enter Name,Email',
                        svgIcon: 'assets/image/share/svg/add.svg',
                        focusNode: controller.myFocusNode,
                        pressed: controller.focus.value,
                        suffix: controller.isTyping.value
                            ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Image.asset(
                            'assets/image/file/img/rename_button.png',
                            width: 34.w,
                          ),
                        )
                            : const SizedBox(),
                        onChange: (value) {
                          controller.searchText(value);
                          controller.isTyping(true);
                          if (value == '') {
                            controller.isTyping(false);
                          }
                        },
                      );
                    }),
                    SizedBox(
                      height: 24.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        'Suggest Member',
                        style: AppStyles.semiBoldHeadline2,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Obx(() {
                      return AddMemberItem(
                        item: AddMemberModel(
                          isSelected: controller.isSelected1.value,
                          name: 'Arman Nassiri',
                          email: 'armannasiri98@gmail.com',
                          image: 'assets/image/temp/img/pro.jpg',
                          id: 1,
                        ),
                        search: controller.searchText.value,
                        isSelectedCallback: () {
                          controller.isSelected1(!controller.isSelected1.value);
                          if (controller.isSelected1.value) {
                            controller.selectedList.add(AddMemberModel(
                              isSelected: controller.isSelected1.value,
                              name: 'Arman Nassiri',
                              email: 'armannasiri98@gmail.com',
                              image: 'assets/image/temp/img/pro.jpg',
                              id: 1,
                            ));
                            print(controller.selectedList.length.toString() +
                                'ffffffffff');
                          } else {
                            controller.selectedList
                                .removeWhere((element) => element.id == 1);
                            print(controller.selectedList.length.toString() +
                                'ffffffffff');
                          }
                        },
                      );
                    }),
                    Obx(() {
                      return AddMemberItem(
                        item: AddMemberModel(
                          id: 2,
                          isSelected: controller.isSelected2.value,
                          name: 'Sara Hosseini',
                          email: 'sarahoseini@gmail.com',
                          image: 'assets/image/temp/img/sara.png',
                        ),
                        search: controller.searchText.value,
                        isSelectedCallback: () {
                            controller.isSelected2(!controller.isSelected2.value);
                          if (controller.isSelected2.value) {
                            controller.selectedList.add(AddMemberModel(
                              id: 2,
                              isSelected: controller.isSelected2.value,
                              name: 'Sara Hosseini',
                              email: 'sarahoseini@gmail.com',
                              image: 'assets/image/temp/img/sara.png',
                            ));
                            print(controller.selectedList.length.toString() +
                                'ffffffffff');
                          } else {
                            controller.selectedList
                                .removeWhere((element) => element.id == 2);
                            print(controller.selectedList.length.toString() +
                                'ffffffffff');
                          }
                        },
                      );
                    }),

                    // Obx(() {
                    //   return AddMemberItem(
                    //     isSelected: controller.isSelected2.value,
                    //     title: 'Sara Hosseini',
                    //     subTitle: 'sara@gmail.com',
                    //     img: 'assets/image/temp/img/sara.png',
                    //     search: controller.searchText.value,
                    //     isSelectedCallback: () {
                    //       controller.isSelected2(!controller.isSelected2.value);
                    //     },
                    //   );
                    // }),

                    SizedBox(
                      height: 8.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
