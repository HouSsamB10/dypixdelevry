import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

import '../screens/CartScreen.dart';
import '../screens/ExploreScreen.dart';
import '../screens/HomeScreen.dart';
import '../screens/SettingsScreen.dart';

class NavigationController extends GetxController {
  final selectedIndex = 0.obs;

  List<Widget> navigationScreens = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    AccountScreen(),
  ];
}
