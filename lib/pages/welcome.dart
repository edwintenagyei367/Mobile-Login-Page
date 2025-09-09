import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_dribble_shevin/components/buttons.dart';
import 'package:login_dribble_shevin/pages/login.dart';
import 'package:login_dribble_shevin/pages/register.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // image
                Padding(
                  padding: const EdgeInsets.only(top:70.0,left: 12.0),
                  child: SvgPicture.asset('lib/images/logo.svg',
                  height: 280,
                  ),
                ),
                SizedBox(height: 15),
                //welcome text
                Text('Welcome to',
                style: GoogleFonts.roboto(fontSize: 50, color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                Text('SeekJob',
                style: GoogleFonts.roboto(fontSize: 50, color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                //subtext
                Padding(
                  padding: const EdgeInsets.only(left: 35.0,right: 35.0),
                  child: Center(
                    child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(fontSize: 18,color: Colors.grey[700], height: 1.3),
                    ),
                  ),
                ),
                SizedBox(height: 45),
                //login button
                Buttons(background: Colors.black87, foreground: Colors.white, text: "Login",widget: Login(),),
                SizedBox(height: 8),
                //register button
                Buttons(background: Colors.grey.shade400, foreground: Colors.black87, text: "Register",widget: Register(),)
              ],
            ),
          )
        ),
      ),
    );
  }
}