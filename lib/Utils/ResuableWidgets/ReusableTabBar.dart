import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/Utils/app_utils.dart';

class ReusableTabBar extends StatefulWidget  {
  final List<String> tabs;
  final List<Widget> tabViews;
  final Color? unselectedLabelColor;
  final Color? selectedLabelColor;
  final double? indicatorWeight;
  final Color? indicatorColor;
  final TabController? controller;

  ReusableTabBar(
      {required this.tabs,
      required this.tabViews,
      this.unselectedLabelColor =AppColor.app_black,
      this.selectedLabelColor = AppColor.app_primary,
      this.indicatorWeight = 4,
      this.indicatorColor = AppColor.app_primary,
        this.controller
      });

  @override
  State<ReusableTabBar> createState() => _ReusableTabBarState();
}

class _ReusableTabBarState extends State<ReusableTabBar> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.tabs.length,
      child: Column(
        children: <Widget>[
          TabBar(
            controller:_tabController,
            labelStyle: Theme.of(context).textTheme.labelMedium,
            labelColor: AppColor.app_primary,
            padding: EdgeInsets.only(left: 60, right: 60),
            indicatorWeight: 4,
            automaticIndicatorColorAdjustment: true,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 5),
            indicatorColor: AppColor.app_primary,
            unselectedLabelColor: AppColor.app_black,
            unselectedLabelStyle: Theme.of(context).textTheme.displaySmall,

            tabs: widget.tabs.map((String tab) {
              return Tab(
                text: tab,
              );
            }).toList(),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: widget.tabViews
            ),
          ),
        ],
      ),
    );
  }
}


