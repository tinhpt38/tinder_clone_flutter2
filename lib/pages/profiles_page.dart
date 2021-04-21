import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';
import 'package:tinder_clone_flutter2/values/textstyle.dart';
import 'package:tinder_clone_flutter2/widgets/friend_card.dart';

class ProfilesPage extends StatefulWidget {
  @override
  _ProfilesPageState createState() => _ProfilesPageState();
}

class _ProfilesPageState extends State<ProfilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                // color: AppColors.red,
                child: Center(
                  child: Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: AppColors.red),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.activeColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.android,
                          color: AppColors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'GET PREMIUM',
                          style: TxtStyle.bigWhiteText,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
