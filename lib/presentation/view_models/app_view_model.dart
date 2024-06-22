import 'package:flutter/material.dart';
import 'package:shopping/data/constants/icons/icons.dart';
import 'package:shopping/data/constants/styles/style.dart';
import 'package:shopping/data/models/nav_item_model.dart';
import 'package:shopping/presentation/views/favorite_page.dart';
import 'package:shopping/presentation/views/home_Page.dart';
import 'package:shopping/presentation/views/mycart_page.dart';
import 'package:shopping/presentation/views/profile_page.dart';

class AppViewModel   {
  final List<NavItemModel> bottomNavBar = [
    NavItemModel(
        id: 0,
        title: "Home",
        iconFilled: ConstIcons().filledHome,
        iconOutlined: ConstIcons().outlineHome),
    NavItemModel(
        id: 1,
        title: "Favorite",
        iconOutlined: ConstIcons().outlineFavoritesNaveBar,
        iconFilled: ConstIcons().filledFavoritesNaveBar),
    NavItemModel(
        id: 2,
        title: "MyCart",
        iconOutlined: ConstIcons().outlineMyCart,
        iconFilled: ConstIcons().filledMyCart),
    NavItemModel(
        id: 3,
        title: "Profile",
        iconOutlined: ConstIcons().outlineProfile,
        iconFilled: ConstIcons().filledProfile),
  ];

  int selectedIndex = 0;
  List<Tab>? bottomNavBarItem;

  getNavItems(int value, BuildContext context) {
    selectedIndex = value;
    bottomNavBarItem = bottomNavBar
        .map((e) => Tab(
              icon: selectedIndex == e.id ? e.iconFilled : e.iconOutlined,
              child: Text(e.title, style: Style().bodySmall),
            ))
        .toList();

  }

  List<Widget> screensOptions = [
    //TODO:Continue Implementing the rest of the pages
    HomePage(),
    FavoritePage(),
    MyCartPage(),
    ProfilePage(),
  ];
}
