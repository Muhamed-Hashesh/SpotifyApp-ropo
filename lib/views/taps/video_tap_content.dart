import 'package:flutter/material.dart';
import 'package:spotify_app/constants.dart';
import 'package:spotify_app/models/video_grid_model.dart';
import 'package:spotify_app/views/all_videos.dart';
import 'package:spotify_app/widgets/text_button_widget.dart';

import 'package:spotify_app/widgets/video_card.dart';

class VideoContent extends StatelessWidget {
  const VideoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Videos",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              TextButtonTransparent(
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AllVideos();
                  }));
                },
                text: "View All",
                color: cButtonColor,
                fontSize: 14,
                padding: 0,
              ),
            ],
          ),

          // const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return VideoCArd(
                card: videoList[index],
              );
            },
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AllVideos();
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
      ),
    );
  }
}
