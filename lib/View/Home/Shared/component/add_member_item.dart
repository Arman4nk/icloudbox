import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icloudbox/Model/add_member_model.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/Utils/text_styls.dart';

typedef  IsSelectedCallback = void Function();

class AddMemberItem extends StatelessWidget {
  final AddMemberModel item;
  final String? search;
  final IsSelectedCallback isSelectedCallback;
  const AddMemberItem({
    required this.item,
    required this.isSelectedCallback,
     this.search,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSelectedCallback();
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8.h),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary3),
          borderRadius: BorderRadius.circular(20),
          color: AppColors.accent2,
        ),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(16),
              child: Image.asset( item.image)),
          title:_renderTitle(),
          subtitle: Text(item.email,
            style: AppStyles.regularBody3.apply(
                color: AppColors.secondary2),),
          trailing: Container(
            width: 40.r,
            height: 40.r,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primary1),
                color: item.isSelected == true
                    ? AppColors.accent1
                    : AppColors.accent2,
                shape: BoxShape.circle
            ),
            child: item.isSelected == true ? const Icon(
              Icons.done, color: AppColors.accent2,) : null,
          ),
        ),
      ),
    );
  }  _renderTitle() {
    if (search != null) {
      List<String> splitString = item.name.split(search!);

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
      return Text(item.name,style: AppStyles.semiBoldBody1,);
    }
  }

}
