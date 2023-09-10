import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:spotify_app/constants.dart';
import 'package:spotify_app/models/video_grid_model.dart';

class VideoCArd extends StatelessWidget {
  const VideoCArd({
    super.key,
    required this.card,
  });

  final Video card;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 2,
      height: MediaQuery.sizeOf(context).height / 2,
      // color: cButtonColor,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 6.3,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Stack(
                children: [
                  Image.asset(
                    card.image,
                    width: MediaQuery.sizeOf(context).width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: cBlack.withOpacity(0.4),
                  ),
                  const Center(
                      child: Icon(
                    IconlyBold.arrowRight2,
                    color: cWhite,
                    size: 60,
                  ))
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: cGrey,
                  radius: 13,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(card.name)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
