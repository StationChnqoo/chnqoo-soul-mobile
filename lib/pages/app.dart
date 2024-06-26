import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:soul/pages/friend/index.dart';
import 'package:soul/pages/home/index.dart';
import 'package:soul/pages/message/index.dart';
import 'package:soul/pages/my/index.dart';
import 'package:soul/pages/social/index.dart';
import 'package:soul/pages/store/index.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(context),
      confineInSafeArea: true,
      // backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        // borderRadius: BorderRadius.circular(12),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 618),
        curve: Curves.ease,
      ),
      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [HomePage(), SocialPage(), FriendPage(), MessagePage(), MyPage()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(context) {
    const icons = [
      CupertinoIcons.house_alt,
      Icons.emoji_symbols_outlined,
      FluentIcons.search_nearby,
      CupertinoIcons.bubble_left_bubble_right,
      CupertinoIcons.settings
    ];
    const titles = ['首页', '社区', '发现', '消息', '我的'];
    return List.generate(
        5,
        (index) => PersistentBottomNavBarItem(
              icon: Icon(
                icons[index],
                // size: 24,
              ),
              title: (titles[index]),
              activeColorPrimary: Theme.of(context).primaryColor,
              inactiveColorPrimary: CupertinoColors.systemGrey,
            ));
  }
}
