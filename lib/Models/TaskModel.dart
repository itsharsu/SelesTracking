import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppAssets/app_assets.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/App_Theme/AppStrings/app_strings.dart';

class TaskModel {
  String? image;
  String? title;
  String? subtitle;
   Icon? trailingICon;

  TaskModel({this.image,this.title,this.subtitle,this.trailingICon});
}

List<TaskModel> tasks = [
  TaskModel(
    image: App_Assets.taskIcon,
    title: App_Strings.tasktitle,
    subtitle: App_Strings.tasksubtitle,
    trailingICon: Icon(Icons.more_vert,size: 30,color: AppColor.app_grey,)
  ),
  TaskModel(
      image: App_Assets.taskIcon,
      title: App_Strings.tasktitle2,
      subtitle: App_Strings.tasksubtitle2,
      trailingICon: Icon(Icons.more_vert,size: 30,color: AppColor.app_grey,)
  ),TaskModel(
      image: App_Assets.taskIcon,
      title: App_Strings.tasktitle,
      subtitle: App_Strings.tasksubtitle3,
      trailingICon: Icon(Icons.more_vert,size: 30,color: AppColor.app_grey,)
  ),TaskModel(
      image: App_Assets.taskIcon,
      title: App_Strings.tasktitle2,
      subtitle: App_Strings.tasksubtitle4,
      trailingICon: Icon(Icons.more_vert,size: 30,color: AppColor.app_grey,)
  ),
];