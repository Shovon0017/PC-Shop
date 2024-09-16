import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/controller/getX%20controller/navigator_controller.dart';
class NavigationBarShow extends StatelessWidget {
  const NavigationBarShow({super.key});
  @override
  Widget build(BuildContext context) {
    final BottomNavBarController controller = Get.put(BottomNavBarController());
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(controller.bottomBarPages.length,
                (index) => controller.bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar:
      (controller.bottomBarPages.length <= controller.maxCount.value)
          ? AnimatedNotchBottomBar(
        notchBottomBarController: controller.nController,
        color: Color(0xff9a0000),
        showLabel: true,
        textOverflow: TextOverflow.visible,
        maxLine: 1,
        shadowElevation:10,
        kBottomRadius: 28.0,
        notchColor: Color(0xffFFFFFF),
        removeMargins: false,
        bottomBarHeight: 80,
        bottomBarWidth: 500,
        showShadow: true,
        durationInMilliSeconds: 300,
        itemLabelStyle:
        const TextStyle(fontSize: 10, color: Colors.black),
        elevation: 1,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            activeItem: Icon(
              Icons.home_outlined,
              color: Colors.white,

            ),
            itemLabel: 'Home',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.shopping_cart,
              color: Colors.black,

            ),
            activeItem: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            itemLabel: 'Cart',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.person,
              color: Colors.black,
            ),
            activeItem: Icon(
              Icons.person,
              color: Colors.white,
            ),
            itemLabel: 'Profile',
          ),
        ],
        onTap: (index) {
          controller.pageController.jumpToPage(index);
        },
        kIconSize: 20,
      )
          : null,
    );
  }
}