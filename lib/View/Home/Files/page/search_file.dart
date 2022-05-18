import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/file_item_model.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/View/Home/Files/component/search_item.dart';
import 'package:icloudbox/View/Home/Files/controller/search_file_controller.dart';
import 'package:icloudbox/Widgets/custom_input.dart';


class SearchFile extends StatelessWidget {
  const SearchFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final a = GlobalKey();
    final b = GlobalKey();
    final c = GlobalKey();
    final d = GlobalKey();
    final e = GlobalKey();
    final f = GlobalKey();
    final g = GlobalKey();
    final controller = Get.put(SearchFileController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.accent2,
        elevation: 0,
        toolbarHeight: 116.h,
        leading: const SizedBox(),
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 20.w, top: 10.h, bottom: 10.h, right: 12.w),
                    child: Obx(
                          () =>
                          CustomInput(
                            backgroundColor: AppColors.primary1,
                            hintText: 'Search',
                            svgIcon: 'assets/image/file/svg/search.svg',
                            svgColor: controller.isTyping.value ? AppColors
                                .primary2 : AppColors.secondary2,
                            suffix: controller.isTyping.value ? Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Image.asset(
                                'assets/image/file/img/rename_button.png',
                                width: 34.w,),
                            ) : const SizedBox(),
                            onChange: (value) {
                              controller.searchText(value);
                              controller.isTyping(true);
                              if (value == '') {
                                controller.isTyping(false);
                              }
                            },
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 18.w, top: 20),
                  child: Text(
                    'Cancel',
                    style: AppStyles.semiBoldBody2,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            top: -MediaQuery
                .of(context)
                .padding
                .top + 8.h,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery
                    .of(context)
                    .padding
                    .top,
                decoration: BoxDecoration(
                  color: AppColors.secondary3,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 14.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                      'All Files', style: AppStyles.semiBoldHeadline2,),
                  ),
                  SizedBox(height: 20.h,),
                  Obx(() {
                    return SearchItem(
                      key: a,
                      search: controller.searchText.value,
                      onTap: () {},
                      slideOption: controller.slideFileOption,
                      itemModel: FileItemModel(
                          title: 'MammadPazoki.M4A',
                          subtitle: 'No Folder - 0KB',
                          type: 'voice',
                          itemKey:g),
                    );
                  }),
                  Obx(() {
                    return SearchItem(
                      key: e,
                      search: controller.searchText.value,
                      onTap: () {},
                      slideOption: controller.slideFileOption,
                      itemModel:  FileItemModel(
                          title: 'MammadPazoki.Mp4',
                          subtitle: 'No Folder - 0KB',
                          type: 'video',
                          itemKey:e),
                    );
                  }),
                  /*const SearchItem(
                    img: 'assets/image/temp/svg/document_file.svg',
                    subtitle: '4 Folder  - 124MB',
                    title: 'Documents',
                    subTitleIcon: 'assets/image/file/svg/group.svg',
                  ),
                  const SearchItem(
                    img: 'assets/image/temp/svg/document_file.svg',
                    subtitle: '4 Folder  - 124MB',
                    title: 'Broucelee Va Baradaran',
                    subTitleIcon: 'assets/image/file/svg/star.svg',
                  ),
                  const SearchItem(
                    img: 'assets/image/temp/svg/document_file.svg',
                    subtitle: '4 Folder  - 20',
                    title: 'Broucelee Va Khaharan',
                    subTitleIcon: 'assets/image/file/svg/star.svg',
                  ),
                  const SearchItem(
                    img: 'assets/image/temp/svg/document_file.svg',
                    subtitle: '4 Folder  - 124MB',
                    title: 'Broucelee Va Baradaran',
                    subTitleIcon: 'assets/image/file/svg/star.svg',
                  ),
                  const SearchItem(
                    img: 'assets/image/temp/svg/document_file.svg',
                    subtitle: '4 Folder  - 124MB',
                    title: 'Broucelee Va Baradaran',
                    subTitleIcon: 'assets/image/file/svg/star.svg',
                  ),*/
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
