import 'package:flutter/material.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:spotify_app/constants.dart';
import 'package:spotify_app/views/taps/artist_tab_content.dart';
import 'package:spotify_app/views/taps/news_tab_content.dart';
import 'package:spotify_app/views/taps/prodcast_tab_contene.dart';
import 'package:spotify_app/views/taps/video_tap_content.dart';
import 'package:spotify_app/widgets/top_card_widget.dart';

class HomePageSreen extends StatefulWidget {
  const HomePageSreen({super.key});

  @override
  State<HomePageSreen> createState() => _HomePageSreenState();
}

class _HomePageSreenState extends State<HomePageSreen> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: cBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110),
          child: AppbarCustomized(),
        ),
        body: Column(
          children: [
            TopLeadingCardtop(),

            SizedBox(height: 16),
            TabBar(
              unselectedLabelColor: Color(0XFFA5A5A5),
              labelColor: cButtonColor,
              indicatorColor: cButtonColor,
              indicatorWeight: 5,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: true,
              tabs: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Tab(
                    child: Text(
                      "News",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Tab(
                    child: Text(
                      "Video",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Tab(
                    child: Text(
                      "Artist",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Tab(
                    child: Text(
                      "Podcast",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  NewsContent(),
                  VideoContent(),
                  ArtistContent(),
                  ProdcastContent(),
                ],
              ),
            ),
            // Container(
            //   height: 80,
            //   color: Colors.red,
            // )
          ],
        ),
      ),
    );
  }
}

class AppbarCustomized extends StatelessWidget {
  const AppbarCustomized({
    super.key,
    this.leading,
    this.toolbarHeight = 80,
  });

  final Widget? leading;
  final double? toolbarHeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 110,
      backgroundColor: cBackgroundColor,
      elevation: 0,
      leadingWidth: 100,
      leading: leading,
      title: Image.asset(
        "assets/images/Spotify_logo.png",
        width: 140,
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: PopupMenuButton(
            elevation: 0,
            padding: const EdgeInsets.symmetric(vertical: 20),
            iconSize: 40,
            color: cIconBackgroundColor,
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text("Rate App ⭐"),
                ),
                const PopupMenuItem(
                  child: Text("Help"),
                ),
              ];
            },
          ),
        ),
      ],
    );
  }
}
