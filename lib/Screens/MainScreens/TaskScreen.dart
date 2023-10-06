import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppAssets/app_assets.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/App_Theme/AppStrings/app_strings.dart';
import 'package:marketingtrackingapp/Models/TaskModel.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/ResuableAppBar.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/ReusableTabBar.dart';
import 'package:marketingtrackingapp/Utils/app_utils.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> with TickerProviderStateMixin {
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
    return AppUtils.commonContainer(
      color: AppColor.app_white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.app_textFieldBorder,
          body: Column(
            children: [
              AppUtils.commonContainer(
                height: 80,
                width: double.infinity,
                decoration:
                    AppUtils.commonBoxDecoration(color: AppColor.app_white),
                child: CustomAppBar(
                  leadingIcon: App_Assets.menuIcon,
                  leadingIconColor: AppColor.app_black,
                  actionIcon: Icons.add,
                  title: App_Strings.taskList,
                  actionIconColor: AppColor.app_white,
                ),
              ),
              Container(
                color: AppColor.app_white,
                child: TabBar.secondary(
                  controller: _tabController,
                  labelStyle: Theme.of(context).textTheme.labelMedium,
                  labelColor: AppColor.app_primary,
                  padding: EdgeInsets.only(left: 60, right: 60),
                  indicatorWeight: 4,
                  automaticIndicatorColorAdjustment: true,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 5),
                  indicatorColor: AppColor.app_primary,
                  unselectedLabelColor: AppColor.app_black,
                  unselectedLabelStyle:
                      Theme.of(context).textTheme.displaySmall,
                  tabs: const <Widget>[
                    Tab(text: App_Strings.close),
                    Tab(text: App_Strings.inProgress),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    widgetList(),
                    widgetList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  widgetList() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20, bottom: 0),
          child: Container(
            height: 80,
            width: double.infinity,

            decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
              color: AppColor.app_white,
            ),
            child: Align(
              alignment: Alignment.center,
              child: ListTile(
                leading: AppUtils.commonContainer(
                    padding: const EdgeInsets.all(14),
                    height: 60,
                    width: 60,
                    decoration: AppUtils.commonBoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.app_primary,

                    ),
                    child: Image.asset(
                      tasks[index].image.toString(),
                      color: AppColor.app_white,
                      alignment: Alignment.center,
                    )),
                title: Text(
                  tasks[index].title.toString(),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                subtitle: Text(
                  tasks[index].subtitle.toString(),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                trailing: tasks[index].trailingICon,
              ),
            ),
          ),
        );
      },
    );
  }
}
