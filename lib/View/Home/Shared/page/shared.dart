import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/View/Home/Files/component/add_file_page.dart';
import 'package:icloudbox/View/Home/Files/page/search_file.dart';
import 'package:icloudbox/View/Home/Shared/controller/shared_controller.dart';
import 'package:icloudbox/View/Home/Shared/page/search_shared.dart';
import 'package:icloudbox/Widgets/blur_widget/blur_bottom_sheet.dart';

class Shared extends StatelessWidget {
  const Shared({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final x = Get.put(SharedController());
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
            decoration: BoxDecoration(
              color: AppColors.accent1,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primary1, width: 4),
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
                      if (x.selectedIndex.value == 0)
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
                            x.pageController.jumpToPage(0);
                            x.setIndex(0);
                          },
                          child: Text(
                            'All Files',
                            style: AppStyles.semiBoldBody1.apply(
                                color: x.selectedIndex.value == 0
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
                      if (x.selectedIndex.value == 1)
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
                            x.pageController.jumpToPage(1);

                            x.setIndex(1);
                          },
                          child: Text(
                            'My Files',
                            style: AppStyles.semiBoldBody1.apply(
                                color: x.selectedIndex.value == 1
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
          'File',
          style: AppStyles.semiBoldTitle3,
        ),
        leadingWidth: 0,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SearchShared(),
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
      body: SingleChildScrollView(
        child: Column(
          children:  [
            SizedBox(height: 20.h,),
            Text('List',style: AppStyles.semiBoldHeadline2,),
          ],
        ),
      ),
    );
  }
}
