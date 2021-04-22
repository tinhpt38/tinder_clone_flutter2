import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';
import 'package:tinder_clone_flutter2/values/textstyle.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  Widget friendMessage(String txt) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 20),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.9,
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 15),
          child: Text(
            txt,
            style: TxtStyle.smallBlackText,
          ),
        ),
      ),
    );
  }

  Widget myMessage(String txt) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5, right: 20),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.9,
        color: AppColors.activeColor,
        child: Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 15),
          child: Text(
            txt,
            style: TxtStyle.smallWhiteText,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tomato'),
          centerTitle: true,
          backgroundColor: AppColors.black,
          elevation: 0.0,
        ),
        body: Container(
            color: AppColors.black,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  friendMessage(''),
                  myMessage(''),
                  friendMessage(''),
                  myMessage(''),
                  friendMessage(''),
                  myMessage(''),
                  friendMessage(''),
                  myMessage(''),
                ],
              ),
            )),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width / 8,
          color: Colors.black,
          child: Row(
            children: [
              Expanded(
                // flex: 1,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.camera_alt,
                          color: AppColors.activeColor,
                          size: 30,
                        ))),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5, left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type a message \... ',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                // flex: 1,
                child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.send,
                      color: AppColors.activeColor,
                      size: 30,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
