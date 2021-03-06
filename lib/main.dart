import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tinder_clone_flutter2/pages/root_page.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.secondBlack, // navigation bar color
    statusBarColor: AppColors.secondBlack, // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RootPage(),
    );
  }
}
