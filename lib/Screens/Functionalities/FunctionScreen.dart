import 'package:flutter/material.dart';
import 'package:marketingtrackingapp/App_Theme/AppAssets/app_assets.dart';
import 'package:marketingtrackingapp/App_Theme/AppColors/app_colors.dart';
import 'package:marketingtrackingapp/App_Theme/AppStrings/app_strings.dart';
import 'package:marketingtrackingapp/Models/onBoardingModel.dart';
import 'package:marketingtrackingapp/Screens/MainScreens/HomeScreen.dart';
import 'package:marketingtrackingapp/Utils/ResuableWidgets/BottomNavBar.dart';
import 'package:marketingtrackingapp/Utils/app_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TaskAssign extends StatefulWidget {
  const TaskAssign({super.key});

  @override
  State<TaskAssign> createState() => _TaskAssignState();
}

class _TaskAssignState extends State<TaskAssign> {
  final PageController pageController = PageController();

  int currentIndex = 0;


  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLastPage = currentIndex == onBoadrd.length - 1;
    return Scaffold(
      backgroundColor: AppColor.app_primary,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onBoadrd.length,
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return AppUtils.commonContainer(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(40),
                  child: Center(
                    child: Image(
                      image: AssetImage(onBoadrd[index].image.toString()),
                      
                    ),
                  ),
                );
              },
            ),
          ),
          AppUtils.commonContainer(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.app_white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 0,
                left: 10,
                right: 10,
                top: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Text(
                    onBoadrd[currentIndex].title.toString(),
                    style: Theme.of(context).textTheme.displayMedium,
                  ),

                  Text(
                    onBoadrd[currentIndex].discription.toString(),
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),

                  Center(
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: onBoadrd.length,
                      axisDirection: Axis.horizontal,
                      effect: WormEffect(
                        activeDotColor: AppColor.app_primary,
                        dotColor: AppColor.app_textFieldBorder,
                        spacing: 20,
                      )
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: isLastPage ? AppColor.app_primary:AppColor.app_primary,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardScreenAD(),));
                    },
                    child: Text(
                      isLastPage ? "Get Started" : App_Strings.skip,
                      style: isLastPage ? Theme.of(context).textTheme.headlineSmall:Theme.of(context).textTheme.bodySmall,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
