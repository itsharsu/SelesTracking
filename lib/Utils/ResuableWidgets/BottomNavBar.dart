import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppAssets/app_assets.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/Screens/MainScreens/HomeScreen.dart';
import 'package:marketingtrackingapp/Screens/MainScreens/OrderScreen.dart';
import 'package:marketingtrackingapp/Screens/MainScreens/TaskScreen.dart';
import 'package:marketingtrackingapp/Screens/MainScreens/WalletScreen.dart';

import '../app_utils.dart';

class DashboardScreenAD extends StatefulWidget {
  const DashboardScreenAD({Key? key}) : super(key: key);

  @override
  State<DashboardScreenAD> createState() => _DashboardScreenADState();
}

class _DashboardScreenADState extends State<DashboardScreenAD> {
  int _selectedIndex = 0;

  List<String> iconData = [
    App_Assets.HomeIcon,
    App_Assets.TaskIcon,
    App_Assets.OrderIcon,
    App_Assets.WalletIcon,
  ];

  final pages = [
    const HomeScreen(),
    const TaskScreen(),
    const OrderScreen(),
    const WalletScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.app_white,
        body: pages[_selectedIndex],
        bottomNavigationBar: AppUtils.commonContainer(
          height: 80,
          decoration: AppUtils.commonBoxDecoration(
            color: AppColor.app_white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(iconData.length, (index) {
              double containerWidth =
                  MediaQuery.of(context).size.width / iconData.length;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index; // Update the selected index
                  });
                },
                child: AppUtils.commonContainer(
                  width: containerWidth,
                  child: Center(
                    child: Image.asset(
                      iconData[index],
                      width: index == 0 ? 32 : 25,
                      height: index == 0 ? 32 : 25,
                      color: _selectedIndex == index ?AppColor.app_primary: AppColor.app_grey ,
                    ),
                  ),
                ),
              );
            }),
          ),
        ));
  }
}
