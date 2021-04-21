import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';

class ProfilesPage extends StatefulWidget {
  @override
  _ProfilesPageState createState() => _ProfilesPageState();
}

class _ProfilesPageState extends State<ProfilesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 10,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(children: [
                Container(
                  color: AppColors.green,
                  // height: MediaQuery.of(context).size.height / 1.3,
                  height: 700,
                ),
                Container(
                  height: 1000,
                )
              ]),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.arrow_back),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
      Expanded(
          flex: 2,
          child: Container(
            height: 100,
            // color: AppColors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  // color: Colors.amber,
                  child: Image(
                    image: AssetImage('assets/images/buttons-like.png'),
                  ),
                ),
                Container(
                  width: 100,
                  // color: Colors.amber,
                  child: Image(
                    image: AssetImage(
                        'assets/images/buttons-superlike_active.png'),
                  ),
                ),
                Container(
                  width: 100,
                  // color: Colors.amber,
                  child: Image(
                    image: AssetImage('assets/images/buttons-message.png'),
                  ),
                ),
              ],
            ),
          ))
    ]);
  }
}
