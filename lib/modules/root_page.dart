import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
          title: Text("Find Match"),
          centerTitle: true,
          backgroundColor: AppColors.black,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {},
              icon: ImageIcon(AssetImage('assets/images/dashboard.png'))),
          actions: [
            IconButton(
                onPressed: () {},
                icon: ImageIcon(AssetImage('assets/images/menu.png'))),
          ]),
      body: Container(),
    );
  }
}
