import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/file_item_model.dart';
import 'package:icloudbox/View/Home/Files/page/single_file.dart';
import '../../../../Utils/text_styls.dart';
import '../../../../Widgets/fileItem/show_file_item.dart';
import '../controller/file_controller.dart';

class AllFiles extends StatelessWidget {
  const AllFiles({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final a = GlobalKey();
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
          ShowFileItem(
            key: a,
            itemModel: FileItemModel(title: 'photos', subtitle: 'No Folder - 0KB',
                img: 'assets/image/temp/svg/document_file.svg',
                itemKey:a),
            slideOption: controller.slideFileOption,
            onTap: (){},

          ),
        /*  ShowFileItem(
            img: 'assets/image/temp/svg/document_file.svg',
            subtitle: '4 Folder  - 124MB',
            title: 'Broucelee Va Baradaran',
            slideOption: controller.slideFileOption,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SingleFile(title: 'Broucelee Va Baradaran'),
              ));

            },
          ),
          ShowFileItem(
            img: 'assets/image/temp/svg/document_file.svg',
            subtitle: '4 Folder  - 124MB',
            title: 'Documents',
            subTitleIcon: 'assets/image/file/svg/group.svg',
            slideOption: controller.slideFileOption,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SingleFile(title: 'Broucelee Va Baradaran'),
              ));
            },

          ),
          ShowFileItem(
            img: 'assets/image/temp/svg/document_file.svg',
            subtitle: '4 Folder  - 124MB',
            title: 'Broucelee Va Baradaran',
            subTitleIcon: 'assets/image/file/svg/star.svg',
            slideOption: controller.slideFileOption,

            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SingleFile(title: 'Broucelee Va Baradaran'),
              ));
            },

          ),*/
        ],
      ),
    );
  }
}
