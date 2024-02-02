import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project1/src/core/services/login_notifier.dart';
import 'package:project1/src/features/screens/bookmark_screen.dart';
import 'package:project1/src/features/screens/home_screen.dart';
import 'package:project1/src/features/screens/landing_screen.dart';
import 'package:project1/src/features/screens/location_screen.dart';
import 'package:project1/src/features/screens/login_screen.dart';
import 'package:project1/src/features/screens/orders_screen.dart';
import 'package:project1/src/features/screens/orders_tracking.dart';
import 'package:project1/src/features/screens/settings_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/models/bikepeople.dart';
import '../../core/models/recetorders.dart';
import '../../core/models/routes.dart';
import '../screens/details.dart';
import '../screens/scaffold_nested.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');
final _shellNavigatorCKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');
final _shellNavigatorDKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');

final loginInfo = LoginInfo();

// the one and only GoRouter instance
final goRouter = Provider<GoRouter>((ref) {
  return GoRouter(
      // redirect: (context, state) {
      //   final isLoggedIn = notifier.isLoggedIn;
      //   final isGoingToLogin = state.matchedLocation == '/login';

      //   if (!isLoggedIn && !isGoingToLogin && !isDuplicate) {
      //     isDuplicate = true;
      //     return '/landing';
      //   }
      //   if (isGoingToLogin && isGoingToLogin && !isDuplicate) {
      //     isDuplicate = true;
      //     return '/a';
      //   }

      //   if (isDuplicate) {
      //     isDuplicate = false;
      //   }

      //   return null;
      // },
      initialLocation: '/a',
      navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
          path: '/landing',
          builder: (context, state) {
            return const LandingScreen();
          },
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) {
            return const LoginScreen();
          },
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            // the UI shell
            return ScaffoldWithNestedNavigation(
                navigationShell: navigationShell);
          },
          branches: [
            // first branch (A)
            StatefulShellBranch(
              navigatorKey: _shellNavigatorAKey,
              routes: [
                // top route inside branch

                GoRoute(
                  path: '/a',
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: HomeScreen(),
                  ),
                  routes: [
                    // child route
                    GoRoute(
                        path: 'details',
                        name: PageRoutes.details.name,
                        builder: (BuildContext context, GoRouterState state) {
                          final data = state.extra as BikePeople?;
                          return DetailsScreen(
                            bikeData: data,
                          );
                        }),
                  ],
                ),
                GoRoute(
                  path: '/orders',
                  name: PageRoutes.orders.name,
                  builder: (context, state) {
                    return const OrdersScreen();
                  },
                ),
                GoRoute(
                  path: '/track',
                  name: PageRoutes.ordersTracking.name,
                  builder: (BuildContext context, GoRouterState state) {
                    final data = state.extra as RecentOrdersModel;
                    return OrdersTracking(
                      tracker: data,
                    );
                  },
                ),
              ],
            ),

            // second branch (B)
            StatefulShellBranch(
              navigatorKey: _shellNavigatorBKey,
              routes: [
                // top route inside branch
                GoRoute(
                  path: '/b',
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: BookmarkScreen(),
                  ),
                ),
              ],
            ),
            // second branch (B)
            StatefulShellBranch(
              navigatorKey: _shellNavigatorCKey,
              routes: [
                // top route inside branch
                GoRoute(
                  path: '/c',
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: LocationScreen(),
                  ),
                ),
              ],
            ), // second branch (B)
            StatefulShellBranch(
              navigatorKey: _shellNavigatorDKey,
              routes: [
                // top route inside branch
                GoRoute(
                  path: '/d',
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: SettingScreen(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]);
});
