import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tinder_clone_flutter2/custom_lib/tcard/cards.dart';
import 'package:tinder_clone_flutter2/models/user_model.dart';
import 'package:tinder_clone_flutter2/pages/inbox.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';
import 'package:tinder_clone_flutter2/widgets/main_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum direction { right, left }

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<String> users = [
    "Tomato",
    "Oliver",
    "Thea",
    "John",
    "Jack",
    "Cino",
    "Tomato",
    "Oliver",
    "Thea",
    "John",
    "Jack",
  ];

  bool _isMatch = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // randomIndex = randomMatch;
      randomIndex = 2;
    });
  }

  int randomIndex = 0;
  int get randomMatch => Random().nextInt(users.length);

  showMatchDialog() async {
    await showDialog(
        barrierDismissible: true,
        barrierColor: Colors.transparent,
        context: context,
        builder: (_) {
          return Dialog(
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => InboxPage(
                                  user: User(
                                      id: 0,
                                      name: "julia",
                                      imageUrl: "assets/images/me.jpeg"))))
                      .then((value) => Navigator.pop(context));

                  setState(() {
                    _isMatch = false;
                    // randomIndex = randomMatch;
                  });
                },
                child: Image.asset(
                  "assets/images/buttons-like.png",
                ),
              ),
            ),
          );
        }).then((value) => {
          setState(() {
            _isMatch = false;
            randomIndex = randomMatch;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      if (_isMatch) {
        showMatchDialog();
      }
    });
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
          brightness: Brightness.dark,
          title: Text("Find Match"),
          centerTitle: true,
          backgroundColor: AppColors.black,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {},
              icon: ImageIcon(AssetImage('assets/images/dashboard.png'))),
          actions: [
            IconButton(
                onPressed: () {},
                icon: ImageIcon(AssetImage('assets/images/menu.png'))),
          ]),
      body: Container(
        child: TCard(
          size: MediaQuery.of(context).size,
          onForward: (index, _) {
            setState(() {
              _isMatch = index == randomIndex;
            });
            if (index + 1 == users.length) {
              setState(() {
                List<String> temp = []..addAll(users);
                users = temp;
              });
            }
          },
          cards: users
              .map((e) => MainCard(
                    username: e,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
