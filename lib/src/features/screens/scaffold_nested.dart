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
      bottomNavigationBar: NavigationBar(
        indicatorColor: Theme.of(context).primaryColor,
        backgroundColor: const Color(0xFFF1F6FB),
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(
            label: 'Home',
            icon: Image(
              image: AssetImage(
                'assets/images/home.png',
              ),
              color: Colors.black,
            ),
          ),
          NavigationDestination(
            label: 'Orders ',
            icon: Image(
              image: AssetImage(
                'assets/images/markey.png',
              ),
              color: Colors.black,
            ),
          ),
          NavigationDestination(
            label: 'Location',
            icon: Image(
              image: AssetImage(
                'assets/images/cart.png',
              ),
              color: Colors.black,
            ),
          ),
          NavigationDestination(
            label: 'Settings',
            icon: Image(
              image: AssetImage(
                'assets/images/heart.png',
              ),
              color: Colors.black,
            ),
          ),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
