import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:old_seniora_fans/view/screens/gallery_view/gallery_screen_view.dart';
import 'package:old_seniora_fans/view/screens/home_screen_view.dart';
import 'package:old_seniora_fans/view/screens/trophies_view/trophies_screen_view.dart';
import 'package:old_seniora_fans/view/widgets/tab_bar_view_widget.dart';
import 'history_screen_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.104,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/header.png'),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 21.0, top: 20.0, bottom: 36.0, right: 216.5),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 122.5,
                  height: 27,
                ),
              ),
            ),
            SizedBox(
              height: 656,
              child: DefaultTabController(
                initialIndex: 2,
                length: 4,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: double.infinity,
                      color: Colors.amber,
                      child: ButtonsTabBar(
                        backgroundColor: const Color(0xffEFEFEF),
                        radius: 3,
                        unselectedBackgroundColor: Colors.grey[400],
                        unselectedLabelStyle: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w700,
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w700,
                        ),
                        tabs: const [
                          Tab(
                            child: TabBarViewWidget(
                              name: 'History',
                            ),
                          ),
                          Tab(
                            child: TabBarViewWidget(
                              name: 'Trophies',
                            ),
                          ),
                          Tab(
                            child: TabBarViewWidget(
                              name: 'Home',
                            ),
                          ),
                          Tab(
                            child: TabBarViewWidget(
                              name: 'Gallery',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: TabBarView(
                        children: [
                          HistoryScreenView(),
                          TrophiesScreenView(),
                          HomeScreenView(),
                          GalleryScreenView(),
                          Center(
                            child: Icon(Icons.directions_bike),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
