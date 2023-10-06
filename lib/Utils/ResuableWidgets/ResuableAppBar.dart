import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/Utils/app_utils.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final Function()? leadingOnTap;
  final Function()? trailingOnTap;
  final String? leadingIcon;
  final IconData? actionIcon;
  final Color? appBarColor;
  final Color? leadingIconColor;
  final Color? actionIconColor;

  CustomAppBar({
    this.title,
    this.leadingOnTap,
    this.trailingOnTap,
    this.leadingIcon,
    this.actionIcon,
    this.appBarColor = AppColor.app_white,
    this.leadingIconColor = AppColor.app_text2,
    this.actionIconColor = AppColor.app_black,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  Navigator.pop(context);
                },
                child: AppUtils.commonContainer(
                    padding: const EdgeInsets.all(12),
                    height: 60,
                    width: 60,
                    decoration: AppUtils.commonBoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.BackButtonbgColor,
                    ),
                    child: Image.asset(
                      leadingIcon ?? "",
                      alignment: Alignment.center,
                    )),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                title ?? "",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Visibility(
                visible: true,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: AppUtils.commonContainer(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColor.app_primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      actionIcon,
                      color: AppColor.app_white,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
