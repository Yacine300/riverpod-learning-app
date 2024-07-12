import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/helper/routes.dart';
import 'package:riverpod_/presentation/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: FlexThemeData.light(
        appBarStyle: FlexAppBarStyle.scaffoldBackground,
        scaffoldBackground: const Color.fromARGB(255, 251, 245, 217),
        scheme: FlexScheme.bigStone,
      ),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(
          appBarStyle: FlexAppBarStyle.scaffoldBackground,
          scheme: FlexScheme.damask,
          scaffoldBackground: const Color.fromARGB(255, 16, 0, 104)),
      routes: routeMap,
      initialRoute: '/home',
    );
  }
}
