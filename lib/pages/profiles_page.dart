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
                  height: 600,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      // color: AppColors.red,
                      child: Text('About', style: TxtStyle.tittleWhiteText)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Text(
                    'My name is Mary Burgess and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading, and the knowledge ... and perspective that my reading gives me has strengthened my teaching skills and presentation abilities.opportunities, through which I was able to have fewer returned products and increased repeat customers, when compared with co-workers.',
                    style: TxtStyle.smallHighlightText,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      // color: AppColors.red,
                      child: Text('Friends', style: TxtStyle.tittleWhiteText)),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Row(
                      children: [
                        FriendCard(),
                        FriendCard(),
                        FriendCard(),
                        FriendCard(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      // color: AppColors.red,
                      child: Text('Basic Profile',
                          style: TxtStyle.tittleWhiteText)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Container(
                    // color: AppColors.red,

                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoLine('Height', '176 cm'),
                        InfoLine('Weight', '65 kg'),
                        InfoLine('Relationship Status', 'Single'),
                        InfoLine('Ethnicity', 'Asian')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      // color: AppColors.red,
                      child:
                          Text('Interesting', style: TxtStyle.tittleWhiteText)),
                ),
                Container(
                  height: 500,
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
          // nav bar
          flex: 2,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black,
              backgroundBlendMode: BlendMode.lighten,
            ),
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

Widget InfoLine(String txt1, String txt2) {
  return Row(children: [
    Text(
      txt1 + ': ',
      style: TxtStyle.bigHighlightText,
    ),
    Text(
      txt2,
      style: TxtStyle.smallHighlightText,
    )
  ]);
}
