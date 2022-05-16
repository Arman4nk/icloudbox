import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/View/Home/Files/component/share_item.dart';
import 'package:icloudbox/View/Home/Files/controller/file_controller.dart';

import '../../../../Utils/text_styls.dart';
import '../../../../Widgets/custom_input.dart';
import '../../../../Widgets/fileItem/show_file_item.dart';
class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FilesController>();
    return    SizedBox(
      height: ScreenUtil().screenHeight-100.h,
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
                        // Get.back();
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
                    SizedBox(
                      height: 14.h,
                    ),

                    Obx(
                          () => CustomInput(
                        hintText: 'Search',
                        svgIcon: 'assets/image/auth/svg/User.svg',
                        focusNode: controller.myFocusNode,
                        pressed: controller.focus.value,
                        onChange: (value) {},
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text('User Access',style: AppStyles.semiBoldHeadline2,),

                    SizedBox(
                      height: 16.h,
                    ),
                    ShareFileWidget(
                      imgImage:'assets/image/temp/img/pro1.png',
                      subtitle: 'Owner',
                      title: 'Shadi Hosseini',
                      slideOption: controller.slideShareOption,
                    ),
                    ShareFileWidget(
                      imgImage: 'assets/image/temp/img/pro2.jpg',
                      subtitle: 'Owner',
                      title: 'Arman Nasiri',
                      slideOption: controller.slideShareOption,
                    ),
                    ShareFileWidget(
                      imgImage: 'assets/image/temp/img/pro1.png',
                      subtitle: 'Owner',
                      title: 'Shadi Hosseini',
                      slideOption: controller.slideShareOption,
                    ),
                    ShareFileWidget(
                      imgImage: 'assets/image/temp/img/pro1.png',
                      subtitle: 'Owner',
                      title: 'Shadi Hosseini',
                      slideOption: controller.slideShareOption,
                    ),
                    ShareFileWidget(
                      imgImage: 'assets/image/temp/img/pro1.png',
                      subtitle: 'Owner',
                      title: 'Shadi Hosseini',
                      slideOption: controller.slideShareOption,
                    ),
                    ShareFileWidget(
                      imgImage: 'assets/image/temp/img/pro1.png',
                      subtitle: 'Owner',
                      title: 'Shadi Hosseini',
                      slideOption: controller.slideShareOption,
                    ),
                    ShareFileWidget(
                      imgImage: 'assets/image/temp/img/pro1.png',
                      subtitle: 'Owner',
                      title: 'Shadi Hosseini',
                      slideOption: controller.slideShareOption,
                    ),
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
