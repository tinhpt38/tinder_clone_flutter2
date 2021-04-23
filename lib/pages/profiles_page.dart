import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';
import 'package:tinder_clone_flutter2/values/textstyle.dart';
import 'package:tinder_clone_flutter2/widgets/friend_card.dart';

class ProfilesPage extends StatefulWidget {
  @override
  _ProfilesPageState createState() => _ProfilesPageState();
}

class _ProfilesPageState extends State<ProfilesPage> {
  Widget supportCard(String txt) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        // color: AppColors.red,

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.monetization_on,
              size: 40,
              color: AppColors.yellow,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              txt,
              style: TxtStyle.bigWhiteText,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondBlack,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                // color: AppColors.red,
                child: Center(
                  child: Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: AppColors.red,
                      image: DecorationImage(
                          image: AssetImage('assets/images/me.jpeg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
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
              ),
            ),
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    supportCard('My Activities'),
                    supportCard('Reactive Premium'),
                    supportCard('Restore Subscription'),
                    supportCard('Rate us')
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
