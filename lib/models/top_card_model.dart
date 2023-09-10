// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:spotify_app/constants.dart';

class PodcastCard {
  final String image, text1, text2, text3;
  final Color color;
  PodcastCard({
    required this.color,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
  });
}

List<PodcastCard> podcastCardList = [
  PodcastCard(
    image: "assets/images/Yasser.png",
    text1: "More Loved",
    text2: "بودكاست : العلاقات",
    text3: "ياسر حزيمي",
    color: cGrey,
  ),
  PodcastCard(
    image: "assets/images/Amir Monir.png",
    text1: "NEW Podcast",
    text2: "بودكاست : تعلم دينك اولا",
    text3: "امير منير",
    color: const Color(0XFF5A839A),
  ),
  PodcastCard(
    image: "assets/images/Khaled ben hamd.png",
    text1: "NEW ALBUM",
    text2: "بودكاست : بناء القوة النفسية",
    text3: "خالد بن حمد الجابر",
    color: cBlack,
  ),
  PodcastCard(
    image: "assets/images/MohammedElghaleez.png",
    text1: "NEW ALBUM",
    text2: "الراجل الفاضي مشكلة",
    text3: "محمد الغليظ",
    color: const Color(0XFFC7987C),
  ),
  PodcastCard(
    image: "assets/images/amir2.png",
    text1: "More Loved",
    text2: "ازاي تعوض صلاه فاتتك",
    text3: "أمير منير",
    color: const Color(0XFFB70000),
  ),
  PodcastCard(
    image: "assets/images/YasserMamdouh.png",
    text1: "NEW ALBUM",
    text2: "40 معلومة عن الصلاة",
    text3: "ياسر ممدوح",
    color: const Color(0XFFBFA65E),
  ),
];
