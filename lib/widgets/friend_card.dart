import 'package:flutter/cupertino.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';

class FriendCard extends StatefulWidget {
  @override
  _FriendCardState createState() => _FriendCardState();
}

class _FriendCardState extends State<FriendCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          height:100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: AppColors.red
          ),
        ),
      ),q
    );
  }
}
