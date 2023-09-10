import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/views/get_started_page.dart';
// import 'package:spotify_app/views/home_page_screen.dart';

void main() {
  runApp(const SpotifyApp());
}

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Spotify App",
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      // ? routes ---to use-->  Navigator.pushNamed("hame page")
      // routes: {
      //   'hame page' : (context) => const HomePageSreen()
      // },
      home: const GetStartedPage(),
    );
  }
}

