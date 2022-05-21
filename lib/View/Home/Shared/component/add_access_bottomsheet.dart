import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icloudbox/Model/add_member_model.dart';
import 'package:icloudbox/Utils/colors.dart';
import 'package:icloudbox/View/Home/Shared/controller/single_share_controller.dart';
import 'package:icloudbox/View/Home/Shared/page/shared.dart';
import 'package:icloudbox/View/Home/main_page.dart';
import '../../../../Utils/text_styls.dart';
typedef EditCheckBoxClick =  Function(bool flag);
typedef ViewCheckBoxClick = void Function(bool flag);

class AddAccessBottomSheet extends StatelessWidget {
  final List<AddMemberModel> member;
  final EditCheckBoxClick editSelected;
  final ViewCheckBoxClick viewSelected;
  const AddAccessBottomSheet({
    Key? key,
    required this.member,
    required this.editSelected,
    required this.viewSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SingleShareController());
    return SizedBox(
      height: ScreenUtil().screenHeight - 100.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        'assets/image/auth/img/exit.png',
                        width: 50.w,
                      )),
                ),
                Text(
                  'Add Access',
                  style: AppStyles.semiBoldHeadline1,
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Shared(),
                    ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: Text('Share',style: AppStyles.semiBoldBody1,)
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),

                 Column(
                   children: member.map((e) => Column(
                     children: [
                       Padding(
                         padding:  EdgeInsets.symmetric(horizontal: 10.w),
                         child: Row(
                           children: [
                             CircleAvatar(
                               backgroundImage: AssetImage(e.image),
                               radius: 15,
                             ),
                             Padding(
                                 padding:EdgeInsets.symmetric(horizontal: 10.h),
                               child: Text(e.name + ' Access',style: AppStyles.semiBoldHeadline2,),
                             ),
                           ],
                         ),
                       ),
                       SizedBox(height: 10.h,),
                       InkWell(
                         onTap: editSelected(e.editFlag??false),
                         child: Container(
                           decoration: BoxDecoration(
                             border:Border.all(color: AppColors.primary3),
                             borderRadius: BorderRadius.circular(20),
                             color: AppColors.accent2,
                           ),
                           child: Padding(
                             padding: EdgeInsets.symmetric(horizontal: 10.w),
                             child: ListTile(
                               title: Text('Edit',style: AppStyles.semiBoldBody1,),
                               subtitle: Text('Orginaze,add and edit',style: AppStyles.regularBody3.apply(color: AppColors.secondary2),),
                               trailing: Container(
                                 width: 40.r,
                                 height: 40.r,
                                 decoration: BoxDecoration(
                                     border: Border.all(color:AppColors.primary1),
                                     color:e.editFlag==true? AppColors.accent1:AppColors.accent2,
                                     shape: BoxShape.circle
                                 ),
                                 child:e.editFlag==true? Icon(Icons.done,color: AppColors.accent2,):null,
                               ),
                             ),
                           ),
                         ),
                       ),
                       SizedBox(height: 8.w,),
                       InkWell(
                         onTap: editSelected(e.editFlag??false),
                         child: Container(
                           decoration: BoxDecoration(
                             border:Border.all(color: AppColors.primary3),
                             borderRadius: BorderRadius.circular(20),
                             color: AppColors.accent2,
                           ),
                           child: Padding(
                             padding: EdgeInsets.symmetric(horizontal: 10.w),
                             child: ListTile(
                               title: Text('View',style: AppStyles.semiBoldBody1,),
                               subtitle: Text('Only can view Files',style: AppStyles.regularBody3.apply(color: AppColors.secondary2),),
                               trailing: Container(
                                 width: 40.r,
                                 height: 40.r,
                                 decoration: BoxDecoration(
                                     border: Border.all(color:AppColors.primary1),
                                     color:e.editFlag==true? AppColors.accent1:AppColors.accent2,
                                     shape: BoxShape.circle
                                 ),
                                 child:e.editFlag==true? Icon(Icons.done,color: AppColors.accent2,):null,
                               ),
                             ),
                           ),
                         ),
                       ),
                       SizedBox(height: 24.h,),

                     ],
                   )).toList(),
                 )
                 /*   Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        member.name + ' Access',
                        style: AppStyles.semiBoldHeadline2,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),*/
                /*    GestureDetector(
                      onTap: (){
                        editFlagClick();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border:Border.all(color: AppColors.primary3),
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.accent2,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: ListTile(
                            title: Text('Edit',style: AppStyles.semiBoldBody1,),
                            subtitle: Text('Orginaze,add and edit',style: AppStyles.regularBody3.apply(color: AppColors.secondary2),),
                            trailing: Container(
                              width: 40.r,
                              height: 40.r,
                              decoration: BoxDecoration(
                                  border: Border.all(color:AppColors.primary1),
                                  color:editFlag==true? AppColors.accent1:AppColors.accent2,
                                  shape: BoxShape.circle
                              ),
                              child:editFlag==true? const Icon(Icons.done,color: AppColors.accent2,):null,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h,),
                    GestureDetector(
                      onTap: (){
                        viewFlagClick();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border:Border.all(color: AppColors.primary3),
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.accent2,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: ListTile(
                            title: Text('View',style: AppStyles.semiBoldBody1,),
                            subtitle: Text('Only can view Files',style: AppStyles.regularBody3.apply(color: AppColors.secondary2),),
                            trailing: Container(
                              width: 40.r,
                              height: 40.r,
                              decoration: BoxDecoration(
                                  border: Border.all(color:AppColors.primary1),
                                  color:viewFlag==true? AppColors.accent1:AppColors.accent2,
                                  shape: BoxShape.circle
                              ),
                              child:viewFlag==true? Icon(Icons.done,color: AppColors.accent2,):null,
                            ),
                          ),
                        ),
                      ),
                    )*/

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
