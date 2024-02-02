import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 25,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        backgroundColor: const Color(0xFFF1F6FB),
        currentIndex: navigationShell.currentIndex,
        items: const [
          BottomNavigationBarItem(
              label: 'Home', icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(
              label: 'Orders ', icon: Icon(CupertinoIcons.bookmark)),
          BottomNavigationBarItem(
              label: 'Location', icon: Icon(CupertinoIcons.location)),
          BottomNavigationBarItem(
              label: 'Settings', icon: Icon(CupertinoIcons.settings)),
        ],
        onTap: _goBranch,
      ),
    );
  }
}
