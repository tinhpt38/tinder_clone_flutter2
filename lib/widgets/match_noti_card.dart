
import 'package:flutter/cupertino.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';

class MatchCard extends StatefulWidget {
  @override
  _MatchCardState createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height/1.8,
        width: MediaQuery.of(context).size.width/1.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.yellow
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)

                ),
              ),
            ),
            Expanded(child: Container(color: AppColors.activeColor,)),
            SizedBox(height: 15,),
            Expanded(child: Container(
              width: MediaQuery.of(context).size.width/1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.grey
              ),
            ),
            ),
            Expanded(child: Center(
              child: Text('Keep playing',),
              ),
             ),


          ],
        ),
      ),
    );
  }
}
