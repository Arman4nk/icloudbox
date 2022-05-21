import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/share_item_model.dart';
import 'package:icloudbox/Utils/tools.dart';
import 'package:icloudbox/View/Home/Files/component/share_item.dart';
import 'package:icloudbox/View/Home/Shared/component/add_member_bottomsheet.dart';
import 'package:icloudbox/View/Home/Shared/controller/share_shared_controller.dart';
import '../../../../Utils/text_styls.dart';
import '../../../../Widgets/custom_input.dart';

class ShareSharedBottomSheet extends StatelessWidget {
  const ShareSharedBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ShareSharedController());
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
                  'Share',
                  style: AppStyles.semiBoldHeadline1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: InkWell(
                    onTap: () {
                      Tools.showModalBottomSheet(
                          context: context,
                          child: AddMemberBottomSheet(
                          /*    name: 'name',
                              img:  'assets/image/temp/img/pro2.png',
                              editFlag: false,
                              viewFlag: true,
                              viewFlagClick: (){},
                              editFlagClick: (){}*/
                          )
                      );
                    },
                    child: Image.asset(
                      'assets/image/file/img/add_friend.png',
                      width: 50.w,
                    ),),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Obx(
                          () =>
                          CustomInput(
                            hintText: 'Search',
                            svgIcon: 'assets/image/share/svg/search.svg',
                            focusNode: controller.myFocusNode,
                            pressed: controller.focus.value,
                            suffix: controller.isTyping.value ? Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Image.asset(
                                'assets/image/file/img/rename_button.png',
                                width: 34.w,),
                            ) : const SizedBox(),
                            onChange: (value) {
                              controller.isTyping(true);
                              if (value == '') {
                                controller.isTyping(false);
                              }
                              controller.searchText(value);
                            },
                          ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('User Access',
                            style: AppStyles.semiBoldHeadline2,)),
                    ),

                    SizedBox(
                      height: 16.h,
                    ),

                    Obx(() {
                      return ShareFileWidget(
                        itemModel: ShareItemModel(
                          title: 'Shadi Hosseini',
                          subtitle: 'Owner',
                          imgImage: 'assets/image/temp/img/pro2.png',
                        ),
                        search: controller.searchText.value,
                        slideOption: controller.slideShareOption,
                        onTap: () {},
                        // slideOption: controller.slideShareOption,
                      );
                    }),
                    Obx(() {
                      return ShareFileWidget(
                        itemModel: ShareItemModel(
                          title: 'Arman Nasiri',
                          subtitle: 'Owner',
                          imgImage: 'assets/image/temp/img/pro.jpg',
                        ),
                        search: controller.searchText.value,
                        slideOption: controller.slideShareOption,
                        onTap: () {},

                      );
                    }),
                    Obx(() {
                      return ShareFileWidget(
                        itemModel: ShareItemModel(
                          title: 'Arman Nasiri',
                          subtitle: 'Owner',
                          imgImage: 'assets/image/temp/img/pro.jpg',
                        ),
                        search: controller.searchText.value,
                        slideOption: controller.slideShareOption,
                        onTap: () {},
                      );
                    }),
                    SizedBox(height: 100.h,),
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
