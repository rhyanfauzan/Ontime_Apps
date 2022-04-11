import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ontime_apps/theme.dart';

class HorizontalList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: blueColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 26,
            horizontal: 24
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Application Design',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  color: whiteColor,
                  fontSize: 18
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'UI Design Kit',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: lightColor,
                  fontSize: 18
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/Ellipse1.png',
                    width: 32,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Progress',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: lightColor,
                              fontSize: 12
                            ),
                          ),
                          SizedBox(width: 27),
                          Text(
                            '50/80',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: whiteColor,
                              fontSize: 12
                            ),
                          )
                        ],
                      ),
                      Image.asset(
                        'assets/images/Progressbar.png',
                        height: 5,
                      )
                    ],
                  )
                ],
              )
          ]
        ),
      ),
      ),
    );
  }
}