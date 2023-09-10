// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:spotify_app/constants.dart';
import 'package:spotify_app/models/songs_card_model.dart';

class SongStyle extends StatefulWidget {
  const SongStyle({super.key, required this.card});

  final SongsCard card;

  @override
  State<SongStyle> createState() => _SongStyleState();
}

class _SongStyleState extends State<SongStyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: AppBarz(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width - 24 * 2,
              height: MediaQuery.sizeOf(context).width - 24 * 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  widget.card.image,
                  // height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                  ),
                  const HeartIcon(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Container(
                alignment: Alignment.center,
                height: MediaQuery.sizeOf(context).height / 6.5,
                child: const Text(
                    "لما اوصل للـ API بقا وعلينا بخير او widget جاهزة")),
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Stack(
                    fit: StackFit.loose,
                    children: [
                      Image.asset(
                        widget.card.image,
                        fit: BoxFit.cover,
                        height: MediaQuery.sizeOf(context).height,
                        width: MediaQuery.sizeOf(context).width,
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height,
                        width: MediaQuery.sizeOf(context).width,
                        color: cBlack.withOpacity(0.7),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 50, bottom: 24),
                              child: Text(
                                widget.card.nameOfSong,
                                style: const TextStyle(
                                    color: cWhite, fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height / 1.5,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Text(
                                    "White shirt now red, my bloody nose Sleepin', you're on your tippy toes Creepin' around like no one knows Think you're so criminal Bruises on both my knees for you Don't say thank you or please I do what I want when I'm wanting to My soul? So cynical \n\n White shirt now red, my bloody nose Sleepin', you're on your tippy toes Creepin' around like no one knows Think you're so criminal Bruises on both my knees for you Don't say thank you or please I do what I want when I'm wanting to My soul? So cynical \n\n White shirt now red, my bloody nose Sleepin', you're on your tippy toes Creepin' around like no one knows Think you're so criminal Bruises on both my knees for you Don't say thank you or please I do what I want when I'm wanting to My soul? So cynical",
                                    style: TextStyle(
                                        color: Color(0XFF9C9C9C),
                                        letterSpacing: 2,
                                        height: 3),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.sizeOf(context).height / 12,
                              color: cWhite,
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
                                  widget.card.nameOfSong,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(widget.card.nameOfArtist),
                                trailing: const HeartIcon(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Column(
              children: [
                Icon(IconlyLight.arrowUp2),
                Text("Lyrics"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeartIcon extends StatefulWidget {
  const HeartIcon({super.key});

  @override
  State<HeartIcon> createState() => _HeartIconState();
}

class _HeartIconState extends State<HeartIcon> {
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
    return IconButton(
      icon: Icon(
        isHeartSelected ? IconlyBold.heart : IconlyLight.heart,
        color: isHeartSelected ? Colors.red : cBlack,
        size: 30,
      ),
      onPressed: () {
        onHeartPressed();
      },
    );
  }
}

class AppBarz extends StatelessWidget {
  const AppBarz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 110,
      backgroundColor: cBackgroundColor,
      elevation: 0,
      leadingWidth: 100,
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
      title: const Text(
        "Now Playing",
        style: TextStyle(color: cBlack),
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
