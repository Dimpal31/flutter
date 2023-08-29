import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hungerz_restaurant/ThemeLightDark.dart';
import 'package:hungerz_restaurant/provider/todo_provider.dart';
import 'package:provider/provider.dart';

import 'HomeScreen.dart';
import 'SpleshScreen.dart';
import 'ThemeService.dart';

void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<httpProvider>(create: (_)=>httpProvider())
    ],
    child: MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeLightDark.light,
      darkTheme: ThemeLightDark.dark,
      themeMode: ThemeService().theme,
      home: SpleshScreen(),
      //   home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}
