// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:project1/models/app_router.dart';
import 'package:project1/screens/home_screen.dart';
import 'package:project1/screens/landing_screen.dart';
import 'package:project1/screens/login_screen.dart';
import 'package:project1/screens/orders_screen.dart';
import 'package:project1/screens/orders_tracking.dart';
import 'package:project1/widgets/trackwidget.dart';
import 'package:go_router/go_router.dart';
=======
import 'package:project1/src/core/models/app_router.dart';
import 'package:project1/src/core/models/bikepeople.dart';
import 'package:project1/src/features/screens/details.dart';
import 'package:project1/src/features/screens/home_screen.dart';
import 'package:project1/src/features/screens/landing_screen.dart';
import 'package:project1/src/features/screens/login_screen.dart';
import 'package:project1/src/features/screens/orders_screen.dart';
import 'package:project1/src/features/screens/orders_tracking.dart';
import 'package:project1/src/features/widgets/trackwidget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
>>>>>>> 6b33dcda6618bf52a92ed41affec5a47e6daea87

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          path: 'orders',
          builder: (BuildContext context, GoRouterState state) {
            return const OrdersScreen();
          },
        ),
        GoRoute(
          path: 'tracker',
          builder: (BuildContext context, GoRouterState state) {
            return const OrdersTracking();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      // routerConfig: goRouter,
      theme: ThemeData(
        primaryColor: Color(0xFFFFCE22),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
      // home: LandingScreen(),
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      // routes: {
      //   '/login': (context) => LoginScreen(),
      //   '/home': (context) => HomeScreen(),
      //   '/orders': (context) => OrdersScreen(),
      //   '/tracker': (context) => OrdersTracking(),
      // },
=======
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
        '/orders': (context) => OrdersScreen(),
        '/tracker': (context) => OrdersTracking(),
      },
>>>>>>> 6b33dcda6618bf52a92ed41affec5a47e6daea87
    );
  }
}
