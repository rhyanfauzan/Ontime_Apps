import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ontime_apps/option_provider.dart';
import 'package:ontime_apps/theme.dart';
import 'package:ontime_apps/widgets/chartdonat.dart';
import 'package:provider/provider.dart';

class ListCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final bool optionDefault = false;
    return ChangeNotifierProvider<ProviderOption>(
      create: (context) => ProviderOption(),
      child: Card(
        color: darkColor,
        child: 
          Column(
            children: [
            Column(
              children: [
                Consumer<ProviderOption>(
                  builder: (context, optionProvider, _) => 
                  GestureDetector(
                    onTap: (){
                      optionProvider.isActive = true;
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 13
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: optionProvider.activeColor,
                          width: optionProvider.borderCardActive
                        ),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Productivity Mobile App',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: optionProvider.activeColor,
                                  fontSize: 12
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Create Detail Booking',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: whiteColor,
                                  fontSize: 14
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '2 min ago',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: greyColor,
                                  fontSize: 12
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/60persen.png',
                            width: 44,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Column(
            children: [
              Consumer<ProviderOption>(
                builder: (context, optionProvider, _) => 
                GestureDetector(
                  onTap: (){
                    optionProvider.isActive = false;
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 13
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: optionProvider.whiteColor,
                        width: optionProvider.borderCard
                      ),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Banking Mobile App',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: optionProvider.whiteColor,
                                fontSize: 12
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Revision Home Page',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: whiteColor,
                                fontSize: 14
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '5 min ago',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: greyColor,
                                fontSize: 12
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/80persen.png',
                          width: 44,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}