import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/Utils/app_utils.dart';
// import 'package:sales_app/core/constants/app_colors.dart';
// import 'package:sales_app/core/utils/app_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({Key? key, required this.urlLabel, required this.url})
      : super(key: key);

  final String urlLabel;
  final String url;

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        minimumSize: const Size(0, 0),
        textStyle: Theme.of(context).textTheme.bodySmall,
      ),
      onPressed: () {
        _launchUrl(url);
      },
      child: AppUtils.commonTextWidget(text: urlLabel,letterSpacing: 0.5,textColor: AppColor.app_black,fontFamily: "inter",fontSize: 14,
      fontWeight: FontWeight.w500),
    );
  }
}