import 'package:flutter/cupertino.dart';
import 'package:tinder_clone_flutter2/values/app_color.dart';

class TxtStyle {
  static TextStyle nameStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static TextStyle smallHighlightText = TextStyle(
      fontSize: 12,
      color: AppColors.white,
      fontWeight: FontWeight.w200,
      decoration: TextDecoration.none);
  static TextStyle bigHighlightText = TextStyle(
      fontSize: 16,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none);
  static TextStyle smallBlackText = TextStyle(
    fontSize: 16,
  );
  static TextStyle tittleWhiteText = TextStyle(
    fontSize: 30,
    color: AppColors.white,
    decoration: TextDecoration.none,
  );
  static TextStyle smallWhiteText = TextStyle(
      fontSize: 22,
      color: AppColors.white,
      fontWeight: FontWeight.w300,
      decoration: TextDecoration.none);
  static TextStyle bigBlackText = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w300,
      decoration: TextDecoration.none);
  static TextStyle bigWhiteText = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
      decoration: TextDecoration.none);
}
