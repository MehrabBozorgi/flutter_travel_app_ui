import 'package:flutter/material.dart';
import 'package:flutter_trip_app_ui/screens/second_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../tools/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    List<Widget> _buildScreens() {
      return [
        const SecondScreen(),
        const SecondScreen(),
        const SecondScreen(),
        const SecondScreen(),
        const SecondScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          inactiveIcon: const Icon(Icons.home_outlined),
          title: ("Home"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.grey.shade500,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.gps_fixed),
          inactiveIcon: const Icon(Icons.gps_fixed_outlined),
          title: ("My trip"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.grey.shade500,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.search),
          inactiveIcon: const Icon(Icons.search_outlined),
          title: ("Search"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.grey.shade500,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.bookmark),
          inactiveIcon: const Icon(Icons.bookmark_border_outlined),
          title: ("Saved"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.grey.shade500,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.settings),
          inactiveIcon: const Icon(Icons.settings_outlined),
          title: ("Setting"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.grey.shade500,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: navColor,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      // decoration: NavBarDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      //   colorBehindNavBar: Colors.white,
      // ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
