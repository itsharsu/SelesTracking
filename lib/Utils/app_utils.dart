import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
// import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class AppUtils {
  // static Future<void> launchToBrowser(Uri url) async {
  //   if (!await launchUrl(
  //     url,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw Exception('Could not launch $url');
  //   }
  // }

  // static fourDotWidget({VoidCallback? onTap}) {
  //   return commonInkWell(
  //     borderRadius: BorderRadius.circular(20),
  //     onTap: onTap ?? () {},
  //     child: AppUtils.commonContainer(
  //         child: AppUtils.commonContainer(
  //       padding: AppUtils.edgeInsetsAll(allPadding: 10),
  //       child: Column(
  //         children: [
  //           Row(
  //             children: [
  //               AppUtils.commonContainer(
  //                   height: 5,
  //                   width: 5,
  //                   decoration: AppUtils.commonBoxDecoration(
  //                       color: AppColors.colorWhite, shape: BoxShape.circle)),
  //               AppUtils.commonSizedBox(width: 10),
  //               AppUtils.commonContainer(
  //                   height: 5,
  //                   width: 5,
  //                   decoration: AppUtils.commonBoxDecoration(
  //                       color: AppColors.colorWhite, shape: BoxShape.circle)),
  //             ],
  //           ),
  //           AppUtils.commonSizedBox(height: 10),
  //           Row(
  //             children: [
  //               AppUtils.commonContainer(
  //                   height: 5,
  //                   width: 5,
  //                   decoration: AppUtils.commonBoxDecoration(
  //                       color: AppColors.colorWhite, shape: BoxShape.circle)),
  //               AppUtils.commonSizedBox(width: 10),
  //               AppUtils.commonContainer(
  //                   height: 5,
  //                   width: 5,
  //                   decoration: AppUtils.commonBoxDecoration(
  //                       color: AppColors.colorWhite, shape: BoxShape.circle)),
  //             ],
  //           ),
  //         ],
  //       ),
  //     )),
  //   );
  // }

  // static Widget appLogoDummy(
  //     {double? logoSize, Color? primaryTextColor, Color? secondaryTextColor}) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       commonTextWidget(
  //           text: "SALES",
  //           textAlign: TextAlign.center,
  //           fontSize: logoSize ?? AppConstants.thirtyFive,
  //           fontWeight: FontWeight.w700,
  //           letterSpacing: 1,
  //           textColor: primaryTextColor ?? AppColors.colorDarkGrey,
  //           fontFamily: AppConstants.fontFamilyTeko),
  //       commonTextWidget(
  //           text: "APP",
  //           textAlign: TextAlign.center,
  //           fontSize: logoSize ?? AppConstants.thirtyFive,
  //           fontWeight: FontWeight.w700,
  //           letterSpacing: 1,
  //           textColor: secondaryTextColor ?? AppColors.colorMainBlack,
  //           fontFamily: AppConstants.fontFamilyTeko),
  //     ],
  //   );
  // }

  static Widget commonTextWidget({
    required String text,
    Color? textColor,
    double? fontSize,
    double? letterSpacing,
    FontWeight? fontWeight,
    double? height,
    String? fontFamily,
    TextAlign? textAlign,
    EdgeInsets? margin,
    EdgeInsets? padding,
    TextDecoration? decoration,
    bool? softWrap,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return commonContainer(
      padding: padding,
      margin: margin,
      child: Text(
        softWrap: softWrap,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        text,
        style: TextStyle(
          decoration: decoration,
          color: textColor,
          fontSize: fontSize,
          letterSpacing: letterSpacing,
          fontWeight: fontWeight,
          height: height,
          fontFamily: fontFamily,
        ),
      ),
    );
  }

  // static Widget noListWidget() {
  //   return Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         Image.asset(
  //           color: AppColors.colorPurple,
  //           "assets/images/noList.png",
  //           fit: BoxFit.cover,
  //           height: 150,
  //           // width: 80,
  //         ),
  //         AppUtils.commonTextWidget(
  //           text: "No Profile Found",
  //           textColor: AppColors.colorGrey,
  //         ),
  //         // AppUtils.commonSizedBox(height: 5),
  //         // AppUtils.commonTextWidget(
  //         //     text: "Pull to refresh.",
  //         //     textColor: AppColors.colorGrey,
  //         //     fontSize: AppConstants.twelve,
  //         //     fontFamily: StringUtils.fontFamilyHeading,
  //         //     letterSpacing: AppConstants.one
  //         // ),
  //       ],
  //     ),
  //   );
  // }

  // static Widget noDataFound() {
  //   return Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         Image.asset(
  //           "assets/images/404.png",
  //           fit: BoxFit.cover,
  //           height: 150,
  //           // width: 80,
  //         ),
  //         AppUtils.commonTextWidget(
  //           text: "Something went wrong !",
  //           textColor: AppColors.colorGrey,
  //         ),
  //         // AppUtils.commonSizedBox(height: 5),
  //         // AppUtils.commonTextWidget(
  //         //     text: "Pull to refresh.",
  //         //     textColor: AppColors.colorGrey,
  //         //     fontSize: AppConstants.twelve,
  //         //     fontFamily: StringUtils.fontFamilyHeading,
  //         //     letterSpacing: AppConstants.one
  //         // ),
  //       ],
  //     ),
  //   );
  // }

  static Widget commonSizedBox({
    double? height,
    double? width,
    Widget? child,
  }) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }

  static EdgeInsets edgeInsetsOnly({
    double? bottom,
    double? top,
    double? right,
    double? left,
  }) {
    return EdgeInsets.only(
        bottom: bottom ?? 0,
        top: top ?? 0,
        right: right ?? 0,
        left: left ?? 0);
  }

  static EdgeInsets edgeInsetsAll({
    double? allPadding,
  }) {
    return EdgeInsets.all(allPadding ?? 0);
  }

  static double getMediaHeight(BuildContext uiContext) {
    return MediaQuery
        .of(uiContext)
        .size
        .height;
  }

  static double getMediaWidth(BuildContext uiContext) {
    return MediaQuery
        .of(uiContext)
        .size
        .width;
  }

  static Widget commonContainer({
    double? height,
    double? width,
    BoxDecoration? decoration,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Widget? child,
    Color? color,
    BoxConstraints? constraints,
  }) {
    return Container(
      height: height,
      width: width,
      decoration: decoration,
      margin: margin,
      constraints: constraints,
      padding: padding,
      color: color,
      child: child,
    );
  }

  static Widget commonInkWell({
    Widget? child,
    required VoidCallback onTap,
    BorderRadius? borderRadius,
    Color? highlightColor,
  }) {
    return InkWell(
      highlightColor: highlightColor,
      borderRadius: borderRadius,
      onTap: onTap,
      child: child,
    );
  }

  static BoxDecoration commonBoxDecoration({Color? color,
    BoxBorder? border,
    Gradient? gradient,
    BoxShape? shape,
    DecorationImage? image,
    BorderRadiusGeometry? borderRadius,
    List<BoxShadow>? boxShadow}) {
    return BoxDecoration(
      image: image,
      shape: shape ?? BoxShape.rectangle,
      color: color,
      border: border,
      gradient: gradient,
      boxShadow: boxShadow,
      borderRadius: borderRadius,
    );
  }

  static BorderRadiusGeometry borderRadiusAll({double? raduis}) {
    return BorderRadius.all(Radius.circular(raduis ?? 12));
  }

  static String setImageByType(String type) {
    print("typetypetypetype $type");
    String imageString = 'assets/images/card2.jpg';
    if (type.toLowerCase() == "business") {
      imageString = 'assets/images/card2.jpg';
    } else if (type.toLowerCase() == "personal") {
      imageString = 'assets/images/card2.jpg';
    } else if (type.toLowerCase() == "instagram") {
      imageString = 'assets/images/card1.jpg';
    } else if (type.toLowerCase() == "spotify") {
      imageString = 'assets/images/card5.jpg';
    } else if (type.toLowerCase() == "youtube") {
      imageString = 'assets/images/card3.jpg';
    } else if (type.toLowerCase() == "linkedin") {
      imageString = 'assets/images/card4.jpg';
    } else {
      imageString = 'assets/images/card2.jpg';
    }
    return imageString;
  }

  static String setIconByType(String type) {
    print("typetypetypetype $type");
    String imageString = 'assets/images/account.png';
    if (type.toLowerCase() == "business") {
      imageString = 'assets/images/briefcase.png';
    } else if (type.toLowerCase() == "personal") {
      imageString = 'assets/images/account.png';
    } else if (type.toLowerCase() == "instagram") {
      imageString = 'assets/images/instagram.png';
    } else if (type.toLowerCase() == "spotify") {
      imageString = 'assets/images/spotify.png';
    } else if (type.toLowerCase() == "youtube") {
      imageString = 'assets/images/youtube.png';
    } else if (type.toLowerCase() == "linkedin") {
      imageString = 'assets/images/linkedin.png';
    } else {
      imageString = 'assets/images/account.png';
    }
    return imageString;
  }

  static Widget commonElevatedBtn({
    double? width,
    Color? bgColor,
    double? borderRadiusAll,
    double? bottomMargin,
    double? topMargin,
    double? rightMargin,
    double? leftMargin,
    VoidCallback? onPressed,
    String? text,
    String? fontFamily,
    double? fontSize,
    double? letterSpacing,
    Color? textColor,
    double? height,
    BoxBorder? border,
    Gradient? gradient,
    DecorationImage? image,
    EdgeInsetsGeometry? padding,
    FontWeight? fontWeight,
  }) {
    return AppUtils.commonContainer(
      height: height,
      width: width,
      decoration: AppUtils.commonBoxDecoration(
        color: bgColor,
        gradient: gradient,
        image: image,
        border: border,
        borderRadius: BorderRadius.circular(borderRadiusAll ?? 10),
      ),
      margin: AppUtils.edgeInsetsOnly(
          bottom: bottomMargin ?? 0,
          top: topMargin ?? 10,
          right: rightMargin ?? 10,
          left: leftMargin ?? 0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: padding,
          backgroundColor: AppColor.app_primary,
          // shadowColor: AppColor.app_transparent_color,
          foregroundColor: AppColor.app_primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusAll ?? 10),
          ),
        ),
        child: AppUtils.commonTextWidget(
          text: text ?? '',
          textColor: textColor,
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing ?? 0,
        ),
      ),
    );
  }

  static showSnackBarWithColor({required BuildContext context,
    required String message,
    Color? giveColor}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 1000),
        content: Text(message),
        backgroundColor: giveColor,
      ),
    );
  }

  // static loaderWidget({Color? color, double? size}) {
  //   return Center(
  //     child: SpinKitRing(
  //       size: size ?? 50,
  //       color: color ?? AppColors.colorWhite,
  //     ),
  //   );
  // }

  static Widget imageWidget({required String image,
    required BuildContext ctx,
    BoxFit? fit,
    double? height,
    Color? color}) {
    return Center(
      child: Image.asset(
        image,
        fit: fit ?? BoxFit.cover,
        color: color,
        height: height ?? MediaQuery
            .of(ctx)
            .size
            .height / 5,
        // height: MediaQuery.of(context).size.height,
      ),
    );
  }

  static Widget commonDiver({Color? color, double? endIndent, double? indent}) {
    return Divider(
      color: color,
      endIndent: endIndent,
      indent: indent,
    );
  }



// static List<CartModel> addCategory() {
//   List<CartModel> list = [];
//   return list
//     ..add(CartModel(
//         itemCounter: 9,
//         image: icXterfix,
//         itemSize: "XL",
//         colorPlus: "Black",
//         primaryName: "MINI FRG",
//         isFav: false,
//         secondaryName: "ACL Screw-Round Thd Non-Sterile"))
//     ..add(CartModel(
//         itemCounter: 9,
//         image: icArtiqlx,
//         itemSize: "XL",
//         colorPlus: "Black",
//         primaryName: "PEDIATRIC",
//         isFav: false,
//         secondaryName: "ACL Screw-Round Thd Non-Sterile"))
//     ..add(CartModel(
//         itemCounter: 9,
//         image: icPrimex,
//         itemSize: "XL",
//         colorPlus: "Black",
//         primaryName: "PELVIC LVM",
//         isFav: false,
//         secondaryName: "ACL Screw-Round Thd Non-Sterile"))
//     ..add(CartModel(
//         itemCounter: 9,
//         image: icNexpine,
//         itemSize: "XL",
//         colorPlus: "Black",
//         primaryName: "SPINE",
//         isFav: false,
//         secondaryName: "ACL Screw-Round Thd Non-Sterile"))
//     ..add(CartModel(
//         itemCounter: 9,
//         image: icRthrox,
//         itemSize: "XL",
//         colorPlus: "Black",
//         primaryName: "ARTHROSCOPY",
//         isFav: false,
//         secondaryName: "ACL Screw-Round Thd Non-Sterile"))
//     ..add(CartModel(
//         itemCounter: 9,
//         image: icTraumex,
//         itemSize: "XL",
//         colorPlus: "Black",
//         primaryName: "TRAUMA",
//         isFav: false,
//         secondaryName: "ACL Screw-Round Thd Non-Sterile"));
// }
//
// static List<CartModel> addProductIntoList() {
//   List<CartModel> productList = [];
//   productList.add(CartModel(
//       itemCounter: 9,
//       image: icBA101,
//       itemSize: "Ø10 x 32 mm",
//       colorPlus: "Black",
//       primaryName: "ARTHROSCOPY",
//       material: "PEEK",
//       isFav: false,
//       secondaryName: "ACL Screw-Round Thd Non-Sterile"));
//   productList.add(CartModel(
//       itemCounter: 3,
//       image: icBA103,
//       itemSize: "5.0 X 16 X 14 MM",
//       colorPlus: "Brown",
//       material: "TITANIUM",
//       primaryName: "PELVIC LVM",
//       isFav: false,
//       secondaryName: "Acl Screw-Square Thd Non-Sterile"));
//   productList.add(CartModel(
//       itemCounter: 4,
//       image: icBA105,
//       colorPlus: "Brown",
//       itemSize: "28mm-13mm-5°",
//       material: "PEEK",
//       isFav: false,
//       primaryName: "MINI FRG",
//       secondaryName: "Endo Button w/o Suture Loop - Plain"));
//   productList.add(CartModel(
//       itemCounter: 1,
//       image: icBA106,
//       primaryName: "ARTHROSCOPY",
//       itemSize: "7 MM",
//       material: "S.S",
//       colorPlus: "White",
//       isFav: false,
//       secondaryName: "BE-ON Button with Continuous Loop Sutures"));
//   productList.add(CartModel(
//       itemCounter: 2,
//       image: icBA107,
//       itemSize: "Small",
//       primaryName: "MINI FRG",
//       material: "LVM",
//       colorPlus: "Blue",
//       isFav: false,
//       secondaryName: "ACL Flexrope Fixation Button"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBA108,
//       itemSize: "25 mm",
//       colorPlus: "White",
//       material: "PEEK",
//       primaryName: "PELVIC LVM",
//       isFav: false,
//       secondaryName: "Suture Disk Round"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBA109,
//       itemSize: "Small",
//       colorPlus: "White",
//       material: "TITANIUM",
//       primaryName: "SPINE",
//       isFav: false,
//       secondaryName: "Suture Disk- D Type"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBA110,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "Spike Wahser"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBT01,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "1.5mm Mini LCP"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBT02,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "1.5mm Mini Reconstruction LCP"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBT07,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "1.5mm Mini Strut LCP oblique-angled Left"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBT09,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "2.0mm Mini Reconstruction LCP"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBT10,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "2.0mm Mini T LCP"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBT17,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "2.4mm Mini Y LCP"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBT215,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "4.0mm Cancellous Bone Screw Short Thd Twin Lock"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBT363,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "Calcaneus LCP Right"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBN101,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "Cannulated Humerus Nail"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBN103,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "Cannulated Universal Tibia Nail"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBN106,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "Proximal Femoral Nail Short 250mm 130°"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBN119,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "6.4mm Cannulated Lag Screw"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBN125,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "Titanium Elastic Nail"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBN105,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "Boy's Cotton Combo"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBN134,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "Multilock Proximal Humerus Nail Long Right"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBN136,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "Multilock Proximal Humerus Nail Short Right"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBS101,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "EPHORATE-4.5mm Monoaxial Pedicle Screw"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBS111,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "5.5mm Connecting Rod, One Side Hex"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBS113,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "Spine Staple (Titanium)"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBS122,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "Transverse Conncetor Square"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBS408,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "D-Anterior Cervical Cage"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBS420,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "AVIATION-P Cervical Cage with Plate"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBS424,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "AUTOBLOCK Anterior Cervical Cage"));
//   productList.add(CartModel(
//       itemCounter: 5,
//       image: icBS439,
//       itemSize: "M",
//       colorPlus: "White",
//       primaryName: "KIDS",
//       isFav: false,
//       secondaryName: "MANGLIOR TLIF Banana Cage"));
//   return productList;
// }
//
// static List<CartModel> addProductToFav(){
//   List<CartModel> favList = [];
//   favList.add(CartModel(
//       itemCounter: 9,
//       image: icBA101,
//       itemSize: "Ø10 x 32 mm",
//       colorPlus: "Black",
//       primaryName: "ARTHROSCOPY",
//       material: "PEEK",
//       isFav: false,
//       secondaryName: "ACL Screw-Round Thd Non-Sterile"));
//   favList.add(CartModel(
//       itemCounter: 3,
//       image: icBA103,
//       itemSize: "5.0 X 16 X 14 MM",
//       colorPlus: "Brown",
//       material: "TITANIUM",
//       primaryName: "PELVIC LVM",
//       isFav: false,
//       secondaryName: "Acl Screw-Square Thd Non-Sterile"));
//   favList.add(CartModel(
//       itemCounter: 4,
//       image: icBA105,
//       colorPlus: "Brown",
//       itemSize: "28mm-13mm-5°",
//       material: "PEEK",
//       isFav: false,
//       primaryName: "MINI FRG",
//       secondaryName: "Endo Button w/o Suture Loop - Plain"));
//   favList.add(CartModel(
//       itemCounter: 1,
//       image: icBA106,
//       primaryName: "ARTHROSCOPY",
//       itemSize: "7 MM",
//       material: "S.S",
//       colorPlus: "White",
//       isFav: false,
//       secondaryName: "BE-ON Button with Continuous Loop Sutures"));
//   favList.add(CartModel(
//       itemCounter: 2,
//       image: icBA107,
//       itemSize: "Small",
//       primaryName: "MINI FRG",
//       material: "LVM",
//       colorPlus: "Blue",
//       isFav: false,
//       secondaryName: "ACL Flexrope Fixation Button"));
//   favList.add(CartModel(
//       itemCounter: 5,
//       image: icBA108,
//       itemSize: "25 mm",
//       colorPlus: "White",
//       material: "PEEK",
//       primaryName: "PELVIC LVM",
//       isFav: false,
//       secondaryName: "Suture Disk Round"));
//   favList.add(CartModel(
//       itemCounter: 5,
//       image: icBA109,
//       itemSize: "Small",
//       colorPlus: "White",
//       material: "TITANIUM",
//       primaryName: "SPINE",
//       isFav: false,
//       secondaryName: "Suture Disk- D Type"));
//   return favList;
// }



  // you have to add Glassmorphism_Ui Package
  // static Widget commanGlassMophism({
  //   double? height,
  //   double? width,
  //   double? blur,
  //   double? opacity,
  //   Color? color,
  //   Widget? child,
  //   Gradient? gradient,
  //   BorderRadius? borderRadius,
  //   BoxBorder? border,
  //   BoxShape? shape,
  //   Color? shadowcolor,
  //   double? shadowStrength,
  //
  // }){
  //   return GlassContainer(
  //     height: height,
  //     width: width,
  //     color: color,
  //     blur: blur ?? 0,
  //     opacity: opacity ?? 0,
  //     child: child,
  //     gradient: gradient,
  //     borderRadius: borderRadius,
  //     border: border,
  //     shadowColor: shadowcolor ?? AppColors.app_transparent_color,
  //     shadowStrength: shadowStrength ?? 0,
  //   );
  // }

}

