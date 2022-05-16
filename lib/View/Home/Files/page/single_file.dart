import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/View/Home/Files/component/add_file_page.dart';
import 'package:icloudbox/View/Home/Files/component/choose_location_item.dart';
import 'package:icloudbox/View/Home/Files/component/search_item.dart';
import 'package:icloudbox/View/Home/Files/controller/file_controller.dart';
import 'package:icloudbox/View/Home/Files/page/search_file.dart';
import 'package:icloudbox/View/Home/Files/page/single_file_details.dart';
import 'package:icloudbox/Widgets/blur_widget/blur_bottom_sheet.dart';
import 'package:icloudbox/Widgets/file_widget.dart';

class SingleFile extends StatelessWidget {
  final String title;
  const SingleFile({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller =Get.find<FilesController>();

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
        backgroundColor: AppColors.accent2,
        elevation: 0,
        toolbarHeight: 116.h,
        leading: const SizedBox(),
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 20.w,top: 25.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 6.w),
                      child: Image.asset('assets/image/file/img/back.png',width: 54.w,),
                    ),
                  ),
                  Text(title,style: AppStyles.semiBoldHeadline1,),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SearchFile(),
                      ));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 6.w),
                      child: Image.asset('assets/image/home/img/search.png',width: 54.w,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            top: - MediaQuery.of(context).padding.top+8.h,
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
          SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text('List',style: AppStyles.semiBoldHeadline2,),
                  ),
                  SizedBox( height: 20.h,),
                  FileWidget(
                    img: 'assets/image/temp/svg/document_file.svg',
                    subtitle: '4 Folder  - 124MB',
                    title: 'Documents',
                    subTitleIcon: 'assets/image/file/svg/star.svg',
                    slideOption: controller.slideFileOption,
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SingleFileDetails(title: 'Documents'),
                      ));
                    },
                  ),
                  FileWidget(
                    img: 'assets/image/temp/svg/document_file.svg',
                    subtitle: 'No Folder - 0KB',
                    title: 'Photos',
                    slideOption: controller.slideFileOption,
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SingleFileDetails(title: 'Photos'),
                      ));
                    },
                  ),
                  FileWidget(
                    img: 'assets/image/temp/svg/document_file.svg',
                    subtitle: '4 Folder  - 124MB',
                    title: 'Mamad Salahshoor',
                    slideOption: controller.slideFileOption,
                    subTitleIcon: 'assets/image/file/svg/group.svg',
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SingleFileDetails(title: 'Mamad Salahshoor'),
                      ));
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
