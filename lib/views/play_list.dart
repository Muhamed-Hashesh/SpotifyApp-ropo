import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:spotify_app/constants.dart';
import 'package:spotify_app/models/songs_card_model.dart';
import 'package:spotify_app/views/home_page_screen.dart';
import 'package:spotify_app/widgets/songs_card_widget.dart';

class PlayList extends StatefulWidget {
  const PlayList({super.key});

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  final int numOfSongs = songPlaylistList.length;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: AppbarCustomized(
          toolbarHeight: 110,
          leading: Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CircleAvatar(
                backgroundColor: cIconBackgroundColor,
                radius: 25,
                child: Icon(
                  IconlyLight.arrowLeft2,
                  color: cBlack,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                Text(
                  "$numOfSongs songs",
                  style: const TextStyle(color: cButtonColor),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              // physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: songPlaylistList.length,
              itemBuilder: (context, j) {
                return SongsPlaylist(song: songPlaylistList[j]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
