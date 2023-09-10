import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/constants.dart';
import 'package:spotify_app/views/authentication/signin_page.dart';
import 'package:spotify_app/views/home_page_screen.dart';
import 'package:spotify_app/widgets/button_widget.dart';
import 'package:spotify_app/widgets/custom_text_field.dart';
import 'package:spotify_app/widgets/text_button_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: cBackgroundColor,
      appBar: AppBar(
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
        title: Image.asset(
          "assets/images/Spotify_logo.png",
          width: 140,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Text(
                "Register",
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: cBlack,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "if you need any support",
                      style: TextStyle(
                        fontSize: 16,
                        color: cGrey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TextButtonTransparent(
                      ontap: () {},
                      text: 'click here',
                      color: cButtonColor,
                      fontSize: 16,
                      padding: 0,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 13, bottom: 8),
                child: MyCustomTextField(
                  prefixIcon: null,
                  hintText: "Full Name",
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: MyCustomTextField(
                  prefixIcon: null,
                  hintText: "Enter Email",
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: MyCustomTextField(
                  password: true,
                  prefixIcon: null,
                  hintText: "Password",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ButtonModel(
                  text: 'Register',
                  padding: 24,
                  height: 85,
                  ontap: () {
                    Navigator.pushReplacement(
                        context,
                        (MaterialPageRoute(builder: (context) {
                          return const HomePageSreen();
                        })));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1.2,
                        color: cBlack.withOpacity(0.20),
                        indent: 5,
                        endIndent: 10,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'or',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.2,
                        color: cBlack.withOpacity(0.20),
                        indent: 10,
                        endIndent: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SizedBox(
                  width: 150,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/images/google.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/images/apple.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      "do you have an account ?",
                      style: TextStyle(
                        fontSize: 16,
                        color: cGrey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  TextButtonTransparent(
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignInPage();
                          },
                        ),
                      );
                    },
                    text: 'Sign in',
                    color: cButtonColor,
                    fontSize: 16,
                    padding: 0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
