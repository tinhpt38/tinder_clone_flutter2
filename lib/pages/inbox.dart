import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/models/message_model.dart';
import 'package:tinder_clone_flutter2/models/user_model.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';
import 'package:tinder_clone_flutter2/values/textstyle.dart';

class InboxPage extends StatefulWidget {
  final User user;

  InboxPage({required this.user});

  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      margin: isMe
          ? EdgeInsets.only(top: 8, bottom: 8, left: 80.0, right: 20)
          : EdgeInsets.only(top: 8, bottom: 8, left: 20.0, right: 80),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      // width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
          color: isMe ? AppColors.activeColor : AppColors.white,
          borderRadius:
              isMe ? BorderRadius.circular(20) : BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(message.time, style: TxtStyle.smallBlackText),
          SizedBox(height: 8.0),
          Text(message.text, style: TxtStyle.smallBlackText),
        ],
      ),
    );
    return msg;
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: AppColors.secondBlack,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt),
            iconSize: 30.0,
            color: AppColors.activeColor,
            onPressed: () {},
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  onChanged: (value) {},
                  decoration: InputDecoration.collapsed(
                    hintText: 'Send a message...',
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 30.0,
            color: AppColors.activeColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondBlack,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: AppColors.secondBlack,
        title: Text(
          widget.user.name,
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                reverse: true,
                padding: EdgeInsets.only(top: 15.0),
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                  final Message message = messages[index];
                  final bool isMe = message.sender.id == currentUser.id;
                  return _buildMessage(message, isMe);
                },
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
