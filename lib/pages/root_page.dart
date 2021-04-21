import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/pages/home_page.dart';
import 'package:tinder_clone_flutter2/pages/message_page.dart';
import 'package:tinder_clone_flutter2/pages/notifications_page.dart';
import 'package:tinder_clone_flutter2/pages/profiles_page.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Widget> _pages = [
    HomePage(),
    MessagesPage(),
    NotificationsPage(),
    ProfilesPage()
  ];

  int _index = 0;

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
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() => _index = index);
        },
        backgroundColor: AppColors.black,
        elevation: 0.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: AppColors.black,
              icon: ImageIcon(AssetImage('assets/images/home_deactive.png')),
              label: 'Home',
              activeIcon: ImageIcon(
                AssetImage('assets/images/home_active.png'),
                color: AppColors.activeColor,
              )),
          BottomNavigationBarItem(
              backgroundColor: AppColors.black,
              icon: ImageIcon(AssetImage('assets/images/message_deactive.png')),
              label: 'Messages',
              activeIcon: ImageIcon(
                AssetImage('assets/images/message_active.png'),
                color: AppColors.activeColor,
              )),
          BottomNavigationBarItem(
              // backgroundColor: AppColors.black,
              icon: ImageIcon(
                  AssetImage('assets/images/notifications_deactive.png')),
              label: 'Notifications',
              activeIcon: ImageIcon(
                AssetImage('assets/images/notifications_active.png'),
                color: AppColors.activeColor,
              )),
          BottomNavigationBarItem(
              backgroundColor: AppColors.black,
              icon: ImageIcon(AssetImage('assets/images/profile_deactive.png')),
              label: 'Profiles',
              activeIcon: ImageIcon(
                AssetImage('assets/images/profile_active.png'),
                color: AppColors.activeColor,
              )),
        ],
        currentIndex: _index,
      ),
    );
  }
}
