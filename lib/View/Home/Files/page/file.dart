import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/View/Home/Files/component/all_file.dart';
import 'package:icloudbox/View/Home/Files/page/search_file.dart';
import '../../../../Utils/colors.dart';
import '../../../../Utils/text_styls.dart';
import '../../../../Widgets/blur_widget/blur_bottom_sheet.dart';
import '../component/add_file_page.dart';
import '../component/your_files.dart';
import '../controller/file_controller.dart';

class File extends StatelessWidget {
  const File({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FilesController());
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            useRootNavigator: true,
            elevation: 0,
            enableDrag: false,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => const BlurButtomsheet(
              child: AddFilePage(),
            ),
          );
        },
        child: Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: AppColors.accent1,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: AppColors.textAccent,
              size: 30,
            )),
      ),
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            color: AppColors.accent2,
            height: kToolbarHeight,
            alignment: Alignment.center,
            child: Obx(
              () => Row(
                children: [
                  SizedBox(
                    width: 25.w,
                  ),
                  Row(
                    children: [
                      if (controller.selectedIndex.value == 0)
                        Container(
                          width: 8.w,
                          decoration: const BoxDecoration(
                            color: AppColors.accent1,
                            shape: BoxShape.circle,
                          ),
                        ),
                      SizedBox(
                        width: 8.w,
                      ),
                      InkWell(
                          onTap: () {
                            controller.pageController.jumpToPage(0);
                            controller.setIndex(0);
                          },
                          child: Text(
                            'All Files',
                            style: AppStyles.semiBoldBody1.apply(
                                color: controller.selectedIndex.value == 0
                                    ? AppColors.accent1
                                    : AppColors.secondary2),
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Row(
                    children: [
                      if (controller.selectedIndex.value == 1)
                        Container(
                          width: 8.w,
                          decoration: const BoxDecoration(
                            color: AppColors.accent1,
                            shape: BoxShape.circle,
                          ),
                        ),
                      SizedBox(
                        width: 8.w,
                      ),
                      InkWell(
                          onTap: () {
                            controller.pageController.jumpToPage(1);

                            controller.setIndex(1);
                          },
                          child: Text(
                            'My Files',
                            style: AppStyles.semiBoldBody1.apply(
                                color: controller.selectedIndex.value == 1
                                    ? AppColors.accent1
                                    : AppColors.secondary2),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: AppColors.accent2,
        elevation: 0,
        title: Text(
          'Home',
          style: AppStyles.semiBoldTitle3,
        ),
        leadingWidth: 0,
        actions: [
          GestureDetector(
            onTap: () {
              //   Get.to(()=>const SearchFile());
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SearchFile(),
              ));
            },
            child: Padding(
              padding: EdgeInsets.only(right: 6.w),
              child: Image.asset('assets/image/home/img/search.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Image.asset('assets/image/home/img/notifications.png'),
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            top: -MediaQuery.of(context).padding.top + 8.h,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).padding.top,
                decoration: BoxDecoration(
                  color: AppColors.secondary3,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 14.w),
            child: PageView(
              controller: controller.pageController,
              onPageChanged: (index) {
                controller.selectedIndex(index);
              },
              children: const [
                AllFiles(),
                YourFiles(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
