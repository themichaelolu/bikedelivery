// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'package:project1/src/features/widgets/gorouter_provider.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sqflite/sqflite.dart';

import 'src/core/models/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(goRouter);
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: router,
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
