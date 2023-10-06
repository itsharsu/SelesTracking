import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/App_Theme/AppStrings/app_strings.dart';
import 'package:marketingtrackingapp/Utils/app_utils.dart';

class ReuableButton extends StatelessWidget {
  final String? text;
   final Function()? onTap;
  const ReuableButton({super.key,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppUtils.commonInkWell(
      onTap: onTap ?? (){},
      child: AppUtils.commonContainer(
        height: 70,
        width: double.infinity,
        decoration: AppUtils.commonBoxDecoration(
          color: AppColor.app_primary,


        ),
        child: Center(child: Text(text ?? "",style: Theme.of(context).textTheme.labelSmall,))
      ),
    );
  }
}
