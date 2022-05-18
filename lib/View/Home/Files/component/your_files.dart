import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/file_item_model.dart';
import 'package:icloudbox/View/Home/Files/page/single_file.dart';
import '../../../../Utils/text_styls.dart';
import '../../../../Widgets/fileItem/show_file_item.dart';
import '../controller/file_controller.dart';

class YourFiles extends StatelessWidget {
  const YourFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child: Text('Your Files',style: AppStyles.semiBoldHeadline2,),
          ),
          SizedBox( height: 20.h,),
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
        ],
      ),
    );
  }
}
