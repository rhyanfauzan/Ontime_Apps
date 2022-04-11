import 'package:flutter/material.dart';
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
                            SizedBox(height: 30),
                            ListCard(),
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