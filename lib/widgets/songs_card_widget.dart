import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:spotify_app/constants.dart';
import 'package:spotify_app/models/songs_card_model.dart';
// import 'package:spotify_app/views/song_style.dart';

class SongCardWidget extends StatefulWidget {
  const SongCardWidget({
    super.key,
    required this.card, required this.ontap,
  });

  final SongsCard card;
 final Function() ontap;
  @override
  State<SongCardWidget> createState() => SongCardWidgetState();
}

class SongCardWidgetState extends State<SongCardWidget> {
  
  bool isPlayed = false;
  final player = AudioPlayer();
  // bool playAndStop = false;

  void isSoundPlayid() {
    setState(() {
      isPlayed = !isPlayed;
      // playAndStop = !playAndStop;
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
        margin: const EdgeInsets.only(right: 13),
        width: 190,
        height: 300,
        // color: cBlack.withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 270,
              // color: Colors.red,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        widget.card.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        isSoundPlayid();

                        if (isPlayed) {
                          player.play(AssetSource(widget.card.song));
                        } else {
                          player.stop();
                        }
                      },
                      child: CircleAvatar(
                        backgroundColor: cIconBackgroundColor,
                        radius: 20,
                        child: Icon(
                          isPlayed ? Icons.pause : IconlyBold.arrowRight2,
                          color: cBlack,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: double.infinity),
                    child: Text(
                      widget.card.nameOfSong,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
                Text(
                  widget.card.nameOfArtist,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SongsPlaylist extends StatefulWidget {
  const SongsPlaylist({Key? key, required this.song}) : super(key: key);

  final SongPlaylist song;

  @override
  SongsPlaylistState createState() => SongsPlaylistState();
}

class SongsPlaylistState extends State<SongsPlaylist> {
  bool isHeartSelected = false;

  void onHeartPressed() {
    setState(
      () {
        isHeartSelected = !isHeartSelected;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: cIconBackgroundColor,
          radius: 25,
          child: Icon(
            IconlyBold.arrowRight2,
            color: cBlack,
            size: 30,
          ),
        ),
        title: Text(
          widget.song.songName,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(widget.song.singer),
        trailing: IconButton(
          icon: Icon(
            isHeartSelected ? IconlyBold.heart : IconlyLight.heart,
            color: isHeartSelected ? Colors.red : cBlack,
            size: 30,
          ),
          onPressed: onHeartPressed,
        ),
      ),
    );
  }
}
