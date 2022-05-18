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
    final b = GlobalKey();
    final c = GlobalKey();
    final d = GlobalKey();
    final e = GlobalKey();
    final f = GlobalKey();
    final g = GlobalKey();
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
            itemModel: FileItemModel(
                title: 'photos',
                subtitle: 'No Folder - 0KB',
                type: 'folder',
                itemKey:b
            ),
            slideOption: controller.slideFileOption,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SingleFile(title: 'photos'),
              ));
            },

          ),
          ShowFileItem(
            key: b,
            itemModel: FileItemModel(
                title: 'photos',
                subtitle: 'No Folder - 0KB',
                type: 'folder',
                itemKey:b
            ),
            slideOption: controller.slideFileOption,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SingleFile(title: 'photos'),
              ));
            },

          ),
          ShowFileItem(
            key: c,
            itemModel: FileItemModel(
                title: 'photos',
                subtitle: 'No Folder - 0KB',
                type: 'folders',
                itemKey:c),
            slideOption: controller.slideFileOption,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SingleFile(title: 'photos'),
              ));
            },

          ),
          ShowFileItem(
            key: d,
            itemModel: FileItemModel(
                title: 'Filezilla.Zip',
                subtitle: 'No Folder - 0KB',
                type: 'zip',
                itemKey:d),
            slideOption: controller.slideFileOption,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SingleFile(title: 'photos'),
              ));
            },

          ),
          ShowFileItem(
            key: e,
            itemModel: FileItemModel(
                title: 'MammadPazoki.Mp4',
                subtitle: 'No Folder - 0KB',
                type: 'video',
                itemKey:e),
            slideOption: controller.slideFileOption,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SingleFile(title: 'photos'),
              ));
            },

          ),
          ShowFileItem(
            key: f,
            itemModel: FileItemModel(
                title: 'Arman.Png',
                subtitle: 'No Folder - 0KB',
                type: 'image',
                img: 'assets/image/temp/img/pro.jpg',
                itemKey:f
            ),
            slideOption: controller.slideFileOption,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SingleFile(title: 'photos'),
              ));
            },

          ),
          ShowFileItem(
            key: g,
            itemModel: FileItemModel(
                title: 'MammadPazoki.M4A',
                subtitle: 'No Folder - 0KB',
                type: 'voice',
                itemKey:g),
            slideOption: controller.slideFileOption,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SingleFile(title: 'photos'),
              ));
            },

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
