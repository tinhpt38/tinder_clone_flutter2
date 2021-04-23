import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';
import 'package:tinder_clone_flutter2/widgets/friend_bar.dart';
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
      body: Column(
        children: <Widget>[
          FriendBar(),
          RecentChats(),
        ],
      ),
    );
  }
}
