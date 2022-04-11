import 'package:flutter/material.dart';
import 'package:ontime_apps/theme.dart';

class BottomNav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity - (2 * 24),
      margin: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        color: darkColor,
        borderRadius: BorderRadius.circular(23),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/Home.png',
            width: 26,
          ),
          Spacer(),
          Image.asset(
            'assets/images/Folder.png',
            width: 26,
          ),
          Spacer(),
          Image.asset(
            'assets/images/Add.png',
            width: 50,
          ),
          Spacer(),
          Image.asset(
            'assets/images/Chat.png',
            width: 26,
          ),
          Spacer(),
          Image.asset(
            'assets/images/Profile.png',
            width: 26,
          ),
        ],
      ),
    );
  }
}