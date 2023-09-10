import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/constants.dart';
import 'package:spotify_app/views/authentication/register_page.dart';
import 'package:spotify_app/widgets/text_button_widget.dart';
import 'package:spotify_app/views/authentication/signin_page.dart';
// import 'package:spotify_app/views/mode_and_continue_page.dart';
// import 'package:spotify_app/views/welcome_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: cBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        backgroundColor: cBackgroundColor,
        elevation: 0,
        // leadingWidth: 100,
        // leading: Align(
        //   alignment: Alignment.center,
        //   child: InkWell(
        //     onTap: () {
        //       Navigator.pop(context);
        //     },
        //     child: const CircleAvatar(
        //       backgroundColor: cIconBackgroundColor,
        //       radius: 25,
        //       child: Icon(
        //         IconlyLight.arrowLeft2,
        //         color: cBlack,
        //         size: 20,
        //       ),
        //     ),
        //   ),
        // ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/register_Background.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Image.asset(
                        "assets/images/Spotify_logo.png",
                        width: 180,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 48),
                        child: Text(
                          "Enjoy listening to music",
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: cBlack,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 32),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu feugiat ut eu sagittis sed dui, lectus sem dignissim.",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: cGrey,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const RegisterPage();
                                    },
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: cButtonColor,
                                fixedSize: Size(
                                    MediaQuery.sizeOf(context).width * 0.6 -
                                        (32 * 2),
                                    80),
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            TextButtonTransparent(
                              ontap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const SignInPage();
                                    },
                                  ),
                                );
                              },
                              text: 'Sign in',
                              color: cBlack,
                              fontSize: 20,
                              padding: 32,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
