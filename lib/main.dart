// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project1/src/core/models/app_router.dart';
import 'package:project1/src/core/models/bikepeople.dart';
import 'package:project1/src/core/models/recetorders.dart';
import 'package:project1/src/features/screens/details.dart';
import 'package:project1/src/features/screens/home_screen.dart';
import 'package:project1/src/features/screens/landing_screen.dart';
import 'package:project1/src/features/screens/login_screen.dart';
import 'package:project1/src/features/screens/orders_screen.dart';
import 'package:project1/src/features/screens/orders_tracking.dart';
import 'package:project1/src/features/widgets/gorouter_provider.dart';
import 'package:project1/src/features/widgets/trackwidget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/core/models/routes.dart';

void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: goRouter,
        theme: ThemeData(
          primaryColor: Color(0xFFFFCE22),
          useMaterial3: true,
        ),
        // routerConfig: _router,
        // // home: LandingScreen(),
        debugShowCheckedModeBanner: false,
        // // routes: {
        //   '/login': (context) => LoginScreen(),
        // //   '/home': (context) => HomeScreen(),
        // //   '/orders': (context) => OrdersScreen(),
        // //   '/tracker': (context) => OrdersTracking(),
        // //   '/details': (context) => DetailsScreen(),
        // },
      ),
    );
  }
}
