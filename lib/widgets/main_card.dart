import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/pages/profiles_page.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';
import 'package:tinder_clone_flutter2/values/textstyle.dart';
import 'package:tinder_clone_flutter2/widgets/match_noti_card.dart';

class MainCard extends StatefulWidget {
  @override
  _MainCardState createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
                  color: AppColors.green
                ),
              ),
            ),
            Expanded(
              flex:2,
                child: InkWell(
                  onTap: (){
                    //chuyen qua trang info
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>ProfilesPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: Text('Tomato',style: TxtStyle.nameStyle,)),
                                Expanded(child: Text('20',style: TxtStyle.nameStyle)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(30)
                                  ) ,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                                    child: Text('Versatile',
                                    style: TxtStyle.smallHighlightText,),
                                  ),
                                ),
                                SizedBox(width :15),
                                Container(
                                  child: Text('Seattle, USA',
                                  style: TxtStyle.smallBlackText,),
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
          padding: EdgeInsets.only(top: 15,left: 15),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0x4B000000),
              borderRadius: BorderRadius.circular(50)
            ),
            height: 50,
            width: 50,
          child: InkWell(
            onTap: (){},
            child: Image.asset('assets/images/Swipe_Rollback.png'),
          )
        ),
        ),
        Positioned(
            left: MediaQuery.of(context).size.height/3.2,
            top : MediaQuery.of(context).size.height/1.72,
            child: InkWell(
          onTap: (){},
          child: Image.asset('assets/images/buttons-superlike_active.png'),
        )),
        MatchCard(),
      ]
    );
  }
}
