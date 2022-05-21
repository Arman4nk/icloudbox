import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/share_item_model.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';
import 'package:icloudbox/Utils/tools.dart';
import 'package:icloudbox/View/Home/Shared/component/edit_access_bottomsheet.dart';
import 'package:icloudbox/View/Home/Shared/controller/single_share_controller.dart';


class ShareFileWidget extends StatelessWidget {
/*  final String? img;
  final String? imgImage;
  final String title;
  final String subtitle;
  final String? subTitleIcon;
  final List<SlidableAction> slideOption;*/
  final ShareItemModel itemModel;
  final List<SlidableAction> slideOption;
  final void Function() onTap;
  final String? search;


  const ShareFileWidget({
    required this.itemModel,
    required this.slideOption,
    required this.onTap,
    this.search,

/*    required this.title,
    this.img,
    required this.subtitle,
    this.subTitleIcon,
    this.imgImage,
    required this.slideOption,*/
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SingleShareController());
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(
            onDismissed: () {
              print('here');
            }),
        dragDismissible: false,
        children: slideOption,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(
                bottom: 8.h,
              ),
              height: 58 + 20.h + 13,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.primary3),
            ),
          ),
           GestureDetector(
              onTap: () {
                Tools.showModalBottomSheet(
                    context: context,
                    child: EditAccessBottomSheet(
                      name: itemModel.title,
                      viewFlag: controller.viewFlag.value,
                      editFlag: controller.editFlag.value,
                      editFlagClick: () {
                        controller.editFlag.value = !controller.editFlag.value;
                      },
                      viewFlagClick: () {
                        controller.viewFlag.value = !controller.viewFlag.value;
                      },
                    )
                );
              },
              child: Container(
                width: ScreenUtil().screenWidth,
                margin: EdgeInsets.only(bottom: 8.h, right: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.accent2,
                    border: Border.all(color: AppColors.primary3)
                ),
                child: Padding(
                  padding:
                  EdgeInsets.only(top: 10.h, bottom: 10.h),
                  child: ListTile(
                    leading: itemModel.img != null ? SvgPicture.asset(
                        itemModel.img!) : ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(itemModel.imgImage!)),
                    title:_renderTitle(),
                    subtitle: Row(
                      children: [
                        if (itemModel.subTitleIcon != null)
                          SvgPicture.asset(itemModel.subTitleIcon!),
                        if (itemModel.subTitleIcon != null)
                          SizedBox(
                            width: 5.w,
                          ),
                        Text(
                          itemModel.subtitle,
                          style: AppStyles.regularBody3
                              .apply(color: AppColors.secondary2),
                        ),
                      ],
                    ),
                    trailing: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child:
                      SvgPicture.asset('assets/image/file/svg/arrow.svg'),
                    ),
                  ),
                ),
              ),
           )
        ],
      ),
    );
  }
  _renderTitle() {
    if (search != null) {
      List<String> splitString = itemModel.title.split(search!);

      List<TextSpan> listSpans = [];
      splitString.sublist(1).forEach((element) {
        listSpans.add(TextSpan(text: search , style:  TextStyle(backgroundColor: AppColors.accent3,fontWeight: FontWeight.w600,fontSize: 16.sp)));
        listSpans.add(TextSpan(text: element,style: AppStyles.semiBoldBody1,));
      });

      return Text.rich(
        TextSpan(
          text: splitString[0],
          style: AppStyles.semiBoldBody1,
          children: listSpans,
        ),
      );
    } else {
      return Text(itemModel.title,style: AppStyles.semiBoldBody1,);
    }
  }

}




