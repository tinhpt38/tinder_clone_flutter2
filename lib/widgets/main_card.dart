import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/pages/user_profile.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';
import 'package:tinder_clone_flutter2/values/textstyle.dart';

class MainCard extends StatefulWidget {
  final String? username;

  MainCard({this.username});

  @override
  _MainCardState createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.white,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/images/me.jpeg"),
                        fit: BoxFit.fill),
                    color: AppColors.green),
              ),
            ),
            Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () {
                    //chuyen qua trang info
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserProfilePage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  widget.username!,
                                  style: TxtStyle.nameStyle,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 24),
                                  child: Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 24),
                                  child: Text('20', style: TxtStyle.nameStyle),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            AppColors.red,
                                            AppColors.organ,
                                          ]),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 8),
                                    child: Text(
                                      'Versatile',
                                      style: TxtStyle.smallHighlightText,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  child: Text(
                                    'Seattle, USA',
                                    style: TxtStyle.smallBlackText,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 15, left: 15),
        child: Container(
            decoration: BoxDecoration(
                color: Color(0x4B000000),
                borderRadius: BorderRadius.circular(50)),
            height: 42,
            width: 42,
            child: InkWell(
              onTap: () {},
              child: Image.asset('assets/images/Swipe_Rollback.png'),
            )),
      ),
      Positioned(
          // left: MediaQuery.of(context).size.height / 3.2,
          // top: MediaQuery.of(context).size.height / 1.72,
          right: 24,
          bottom: MediaQuery.of(context).size.height * 0.1,
          child: InkWell(
            onTap: () {},
            child: Image.asset('assets/images/buttons-superlike_active.png'),
          )),
      // MatchCard(),
    ]);
  }
}
