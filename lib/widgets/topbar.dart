import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ontime_apps/theme.dart';

class TopBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
          icon: Image.asset('assets/images/Menu.png'),
          iconSize: 42,
          onPressed: () {},
        ),
          Text(
            'Friday, 26',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: whiteColor,
              fontSize: 18
            ),
          ),
          IconButton(
          icon: Image.asset('assets/images/Notifications.png'),
          iconSize: 42,
          onPressed: () {},
        ),
        ],
      ),
    );
  }
}