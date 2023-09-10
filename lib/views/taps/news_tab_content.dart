import 'package:flutter/material.dart';
import 'package:spotify_app/constants.dart';
import 'package:spotify_app/models/songs_card_model.dart';
import 'package:spotify_app/views/play_list.dart';
import 'package:spotify_app/views/song_style.dart';
import 'package:spotify_app/widgets/songs_card_widget.dart';
import 'package:spotify_app/widgets/text_button_widget.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';

class NewsContent extends StatelessWidget {
  const NewsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 30, 0, 8),
          child: SizedBox(
            height: 335,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songsCardList.length,
              itemBuilder: (context, i) {
                return SongCardWidget(card: songsCardList[i], ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SongStyle(card: songsCardList[i]);
                    }));
                  },);
              },
            ),
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Playlist",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              TextButtonTransparent(
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PlayList();
                  }));
                },
                text: "See More",
                color: cButtonColor,
                fontSize: 14,
                padding: 0,
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 4,
          itemBuilder: (context, j) {
            return SongsPlaylist(song: songPlaylistList[j]);
          },
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PlayList();
              }));
            },
            child: const CircleAvatar(
              backgroundColor: cIconBackgroundColor,
              radius: 30,
              child: Icon(
                Icons.more_horiz,
                color: cBlack,
                size: 30,
              ),
            ),
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
