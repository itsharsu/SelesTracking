import 'package:marketingtrackingapp/App_Theme/AppAssets/app_assets.dart';
import 'package:marketingtrackingapp/App_Theme/AppStrings/app_strings.dart';

class onboard {
  String? image;
  String? title;
  String? discription;
  onboard({this.image,this.title,this.discription});
}

List<onboard> onBoadrd = [
  onboard(
    image: App_Assets.task_assign,
    title: App_Strings.assignTask,
    discription: App_Strings.functionText

  ),
  onboard(
      image: App_Assets.runtime_tracking,
      title: App_Strings.runtime,
      discription: App_Strings.functionText

  ),
  onboard(
      image: App_Assets.achieve_your_sales,
      title: App_Strings.achieve,
      discription: App_Strings.functionText

  ),
];
