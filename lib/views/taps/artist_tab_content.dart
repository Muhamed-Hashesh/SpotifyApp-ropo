import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/constants.dart';

class ArtistContent extends StatelessWidget {
  const ArtistContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cButtonColor,
      child: ListView(
        children: const [
          Text(
            "No Data Founded",
            textAlign: TextAlign.center,
          ),
          Align(
            alignment: Alignment.center,
            child: AvatarGlow(
                startDelay: Duration(milliseconds: 500),
                endRadius: 100.0,
                child: Material(
                  elevation: 8.0,
                  shape: CircleBorder(),
                  color: Colors.red,
                  child: CircleAvatar(
                    backgroundColor: cIconBackgroundColor,
                    radius: 60,
                    child: Icon(
                      Icons.multitrack_audio,
                      size: 50,
                      color: cBlack,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
