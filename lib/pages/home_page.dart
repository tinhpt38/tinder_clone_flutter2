import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';
import 'package:tinder_clone_flutter2/widgets/main_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum direction { right, left }

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController? _animationControllerRight;
  AnimationController? _animationControllerLeft;
  Animation<double>? slideAnimR, slideAnimL, rotateAnimR, rotateAnimaL;
  var dir;
  double? width;
  double? startDargeDetail;

  // @override
  // void didChangeDependencies() {
  //   width = MediaQuery.of(context).size.width;
  //   _animationControllerRight =
  //       AnimationController(vsync: this, duration: Duration(milliseconds: 400))
  //         ..addStatusListener((status) {
  //           if (status == AnimationStatus.completed) {
  //             setState(() {
  //               users.removeLast();
  //             });
  //           }
  //         });
  //   _animationControllerLeft =
  //       AnimationController(vsync: this, duration: Duration(milliseconds: 400))
  //         ..addStatusListener((status) {
  //           if (status == AnimationStatus.completed) {
  //             setState(() {
  //               users.removeLast();
  //             });
  //           }
  //         });

  //   final curvedAnimationR = CurvedAnimation(
  //       parent: _animationControllerRight!, curve: Curves.easeOut);
  //   final curvedAnimationL = CurvedAnimation(
  //       parent: _animationControllerLeft!, curve: Curves.easeOut);

  //   slideAnimR = Tween<double>(begin: 0, end: width).animate(curvedAnimationR)
  //     ..addListener(() {
  //       setState(() {});
  //     });
  //   rotateAnimR = Tween<double>(begin: 0, end: -0.3).animate(curvedAnimationR)
  //     ..addListener(() {
  //       setState(() {});
  //     });

  //   slideAnimL = Tween<double>(begin: 0, end: -width!).animate(curvedAnimationL)
  //     ..addListener(() {
  //       setState(() {});
  //     });
  //   rotateAnimaL = Tween<double>(begin: 0, end: 0.3).animate(curvedAnimationL)
  //     ..addListener(() {
  //       setState(() {});
  //     });
  //   super.didChangeDependencies();
  // }

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
    "Cino"
  ];

  @override
  void dispose() {
    // _animationControllerLeft!.dispose();
    // _animationControllerRight!.dispose();
    super.dispose();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Container(
  //       color: AppColors.black,
  //       child: Padding(
  //         padding: EdgeInsets.all(15),
  //         // child: Transform.rotate(
  //         // angle: dir == direction.right
  //         //     ? rotateAnimR?.value == null
  //         //         ? 0
  //         //         : rotateAnimR!.value
  //         //     : rotateAnimaL?.value == null
  //         //         ? 0
  //         //         : rotateAnimaL!.value,
  //         child: Center(
  //           child: GestureDetector(
  //             onHorizontalDragStart: (dragDetail) {
  //               startDargeDetail = dragDetail.localPosition.dx;
  //             },
  //             onHorizontalDragUpdate: (dragDetail) {
  //               if (dragDetail.localPosition.dx - startDargeDetail! > 0) {
  //                 // dir = direction.right;
  //                 // _animationControllerRight?.forward();
  //                 print("Right");
  //               } else {
  //                 // dir = direction.left;
  //                 // _animationControllerLeft?.forward();
  //                 print("Left");
  //               }
  //             },
  //             onHorizontalDragEnd: (dragDetail) {},
  //             child: InkWell(
  //               onTap: () {},
  //               child: Stack(
  //                 children: users
  //                     .asMap()
  //                     .map((key, value) =>
  //                         MapEntry(key, MainCard(username: value)))
  //                     .values
  //                     .toList(),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //     // ),
  //   );
  // }
  //
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Container(
        child: TCard(
          size: MediaQuery.of(context).size,
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
