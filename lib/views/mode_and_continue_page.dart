import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/constants.dart';
import 'package:spotify_app/widgets/button_widget.dart';
import 'package:spotify_app/views/welcome_screen.dart';

class ModeAdnContinuePage extends StatefulWidget {
  const ModeAdnContinuePage({super.key});

  @override
  State<ModeAdnContinuePage> createState() => _ModeAdnContinuePageState();
}

class _ModeAdnContinuePageState extends State<ModeAdnContinuePage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: cGrey,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/continu_background.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: cBlack.withOpacity(0.75),
            body: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.asset("assets/images/Spotify_logo.png"),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.42),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    "Choose mode",
                    style: GoogleFonts.poppins(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: cWhite,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ModeOption(
                        icon: Icons.dark_mode_outlined,
                        text: 'Dark Mode',
                        isSelected: !isSelected,
                        ontap: () {
                          setState(
                            () {
                              isSelected = false;
                            },
                          );
                        },
                      ),
                      ModeOption(
                        icon: Icons.light_mode_outlined,
                        text: 'Light Mode',
                        isSelected: isSelected,
                        ontap: () {
                          setState(
                            () {
                              isSelected = true;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 24),
                    child: ButtonModel(
                      text: "Continue",
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const WelcomeScreen();
                            },
                          ),
                        );
                      },
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ModeOption extends StatelessWidget {
  const ModeOption({
    super.key,
    required this.icon,
    required this.text,
    required this.isSelected,
    required this.ontap,
  });

  final IconData icon;
  final String text;
  final bool isSelected;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: isSelected
                ? cButtonColor.withOpacity(0.3)
                : cWhite.withOpacity(0.1),
            radius: 34,
            child: Icon(
              icon,
              color: cWhite,
              size: 32,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            text,
            style: const TextStyle(color: cWhite, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
