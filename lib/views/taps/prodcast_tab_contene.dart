import 'package:flutter/material.dart';
import 'package:spotify_app/constants.dart';
import 'package:spotify_app/models/top_card_model.dart';
import 'package:spotify_app/views/all_prodcasts.dart';
import 'package:spotify_app/widgets/text_button_widget.dart';
import 'package:spotify_app/widgets/top_card_widget.dart';
// import 'dart:math' as math;

class ProdcastContent extends StatelessWidget {
  const ProdcastContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Podcasts",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              TextButtonTransparent(
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AllPodcasts();
                  }));
                },
                text: "View All",
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
          itemCount: 4,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: TopLeadingCard(card: podcastCardList[index]),
          ),

          // TopLeadingCard(),
          // ? علشان لو عاوز تعكس ال widget كلها
          // ? ملحوظة : النص كمان بيتعكس (دا عيب)
          // Transform(
          //   transform: Matrix4.rotationY(math.pi),
          //     alignment: Alignment.center,
          //   child: TopLeadingCard()),
        ),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AllPodcasts();
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
