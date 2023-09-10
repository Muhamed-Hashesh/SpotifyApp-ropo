import 'package:flutter/material.dart';
import 'package:spotify_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/models/top_card_model.dart';

class TopLeadingCard extends StatelessWidget {
  const TopLeadingCard({
    super.key,
    required this.card,
  });

  final PodcastCard card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 1),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width - (24 * 2),
            height: MediaQuery.sizeOf(context).height / 4.7,
            // width: double.infinity,
            // height: 185,
            color: Colors.transparent,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height / 6,
                  // height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: card.color,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 16,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          card.text1,
                          style: const TextStyle(
                            color: cBackgroundColor,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          card.text2,
                          style: GoogleFonts.tajawal(
                            color: cWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          card.text3,
                          style: GoogleFonts.tajawal(
                            color: cWhite,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      card.image,
                      width: 370,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TopLeadingCardtop extends StatelessWidget {
  const TopLeadingCardtop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width - (24 * 2),
            height: MediaQuery.sizeOf(context).height / 4.7,
            // width: double.infinity,
            // height: 185,
            color: Colors.transparent,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height / 6,
                  // height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: cButtonColor,
                  ),
                ),
                const Positioned(
                  left: 0,
                  bottom: 16,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "NEW ALBUM",
                          style: TextStyle(
                            color: cBackgroundColor,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Happier Than Ever",
                          style: TextStyle(
                            color: cWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          "Billie eilish",
                          style: TextStyle(
                            color: cWhite,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/Card_stack_image.png",
                    width: 370,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
