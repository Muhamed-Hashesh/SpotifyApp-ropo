import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/constants.dart';
import 'package:spotify_app/widgets/button_widget.dart';
import 'package:spotify_app/views/mode_and_continue_Page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/get_started_background.jpg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitHeight,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: Image.asset("assets/images/Spotify_logo.png"),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.5),
              Text(
                "Enjoy listening to music",
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: cWhite,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu feugiat ut eu sagittis sed dui, lectus sem dignissim.",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: cGrey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                child: ButtonModel(
                  text: 'Get Started',
                  ontap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ModeAdnContinuePage();
                        },
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
