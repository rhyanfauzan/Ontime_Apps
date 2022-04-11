import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ontime_apps/theme.dart';
import 'package:ontime_apps/widgets/banner.dart';
import 'package:ontime_apps/widgets/bottom_nav.dart';
import 'package:ontime_apps/widgets/chartdonat.dart';
import 'package:ontime_apps/widgets/horizontal_list.dart';
import 'package:ontime_apps/widgets/listcard.dart';
import 'package:ontime_apps/widgets/topbar.dart';
import 'option_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderOption>(
      create: (context) => ProviderOption(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: darkColor,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24
              ),
              child: Stack(
                children: [
                  Container(
                    child: ListView(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 60),
                            BannerWidget(),
                            SizedBox(height: 22),
                            HorizontalList(),
                            SizedBox(height: 33),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'In Progress',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: whiteColor,
                                    fontSize: 18
                                  ),
                                ),
                                IconButton(
                                  icon: Image.asset('assets/images/ArrowLeft.png'),
                                  iconSize: 7,
                                  onPressed: () {},
                                )
                              ],
                            ),
                            SizedBox(height: 23),
                            ListCard(),
                            SizedBox(height: 50),
                            Text(
                                  'By : Ryan NF',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color: lightColor,
                                    fontSize: 12
                                  ),
                                ),
                            SizedBox(height: 100),
                          ],
                        ),
                      ],
                    ),
                  ),
                  TopBar(),
                ],
              ),
            ),
          ),
          floatingActionButton: BottomNav(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        ),
      ),
    );
  }
}