import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/Banner.png',
          width: 274,
        ),
      ],
    );
  }
}