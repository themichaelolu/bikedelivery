// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/models/app_router.dart';
import 'package:project1/screens/home_screen.dart';
import 'package:project1/screens/landing_screen.dart';
import 'package:project1/screens/login_screen.dart';
import 'package:project1/screens/orders_screen.dart';
import 'package:project1/screens/orders_tracking.dart';
import 'package:project1/widgets/trackwidget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final goRouter = ref.watch(goRouterProvider);
    return MaterialApp(
      // routerConfig: goRouter,
      theme: ThemeData(
        primaryColor: Color(0xFFFFCE22),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: LandingScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/orders': (context) => OrdersScreen(),
        '/tracker': (context) => OrdersTracking(),
      },
    );
  }
}
