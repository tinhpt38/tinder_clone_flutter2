import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/pages/inbox.dart';
import 'package:tinder_clone_flutter2/pages/message_page.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';
import 'package:tinder_clone_flutter2/values/textstyle.dart';

class MatchCard extends StatefulWidget {
  @override
  _MatchCardState createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: AppColors.secondBlack,
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 1.8,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: AppColors.white),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: AppColors.red,
                          borderRadius: BorderRadius.circular(150)),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                // color: AppColors.activeColor,
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        'Tomato',
                        style: TxtStyle.bigBlackText,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '20',
                        style: TxtStyle.bigBlackText,
                      )
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        'o',
                        style: TextStyle(color: AppColors.green),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Active Recently',
                        style: TxtStyle.smallBlackText,
                      ),
                    ])
                  ],
                ),
              )),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    //
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context)
                    // =>
                    //     InboxPage(
                    //       // user: chat.sender,
                    //     )
                    // ));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.activeColor),
                    child: Center(
                      child: Text(
                        'Send a message',
                        style: TxtStyle.smallWhiteText,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Keep playing',
                      style: TextStyle(
                        color: AppColors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
