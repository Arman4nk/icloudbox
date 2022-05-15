import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../Utils/text_styls.dart';
import '../../../../Widgets/file_widget.dart';
import '../controller/file_controller.dart';

class AllFiles extends StatelessWidget {
  const AllFiles({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final controller =Get.find<FilesController>();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox( height: 25.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Text('All Files',style: AppStyles.semiBoldHeadline2,),
          ),
          SizedBox( height: 20.h,),
          FileWidget(
            img: 'assets/image/temp/svg/document_file.svg',
            subtitle: '4 Folder  - 124MB',
            title: 'Broucelee Va Baradaran',
            slideOption: controller.slideFileOption,
          ),
          FileWidget(
            img: 'assets/image/temp/svg/document_file.svg',
            subtitle: '4 Folder  - 124MB',
            title: 'Documents',
            subTitleIcon: 'assets/image/file/svg/group.svg',
            slideOption: controller.slideFileOption,

          ),
          FileWidget(
            img: 'assets/image/temp/svg/document_file.svg',
            subtitle: '4 Folder  - 124MB',
            title: 'Broucelee Va Baradaran',
            subTitleIcon: 'assets/image/file/svg/star.svg',
            slideOption: controller.slideFileOption,


          ),
        ],
      ),
    );
  }
}
