import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';
import 'package:tinder_clone_flutter2/widgets/recent_chat.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.menu),
      //     iconSize: 30.0,
      //     color: Colors.white,
      //     onPressed: () {},
      //   ),
      //   title: Text(
      //     'Chats',
      //     style: TextStyle(
      //       fontSize: 28.0,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   elevation: 0.0,
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.search),
      //       iconSize: 30.0,
      //       color: Colors.white,
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      body: Column(
        children: <Widget>[
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            color: AppColors.activeColor,
            child: Center(
              child: Text(
                'user field <undone>',
                style: TextStyle(
                  color: AppColors.black
                ),
              ),
            ),
          ),
          RecentChats(),
        ],
      ),
    );
  }
}
