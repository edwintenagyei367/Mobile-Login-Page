import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_dribble_shevin/components/buttons.dart' show Buttons;
import 'package:login_dribble_shevin/components/icons.dart';
import 'package:login_dribble_shevin/components/password.dart';
import 'package:login_dribble_shevin/components/textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset('lib/images/back-arrow.png',
                  color: Colors.black,
                  width: 30,
                  height: 30,
                  )
                ),
                SizedBox(height: 40,),
                Text('Let\'s Sign you in. ',
                style: GoogleFonts.roboto(fontSize: 35, color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20,),
                Text('Welcome back',
                style: GoogleFonts.lato(fontSize: 25,color: Colors.grey[700]),
                ),
                SizedBox(height:20 ,),
                Text('You\'ve been missed!',
                style: GoogleFonts.lato(fontSize: 25,color: Colors.grey[700]),
                ),
                SizedBox(height: 40,),
                Text('Username or Email',
                style: GoogleFonts.roboto(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),
                ),
                TextfieldComponent(hintText: 'Enter Username or Email'),
                SizedBox(height: 10,),
                Text('Password',
                style: GoogleFonts.roboto(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),
                ),
                PasswordComponent(hintText: 'Enter Password'),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Expanded(
                      child: Divider(color: Colors.grey,thickness: 1,),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('or',
                      style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   IconComponent(iconPath: 'lib/images/google.png'),
                   SizedBox(width: 15,),
                   IconComponent(iconPath: 'lib/images/linkedin.png'),
                   SizedBox(width: 15,),
                   IconComponent(iconPath: 'lib/images/facebook.png')
                  ],
                ),
                SizedBox(height: 120,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don\'t have an account ?",
                    style:GoogleFonts.lato(fontSize: 15,color: Colors.grey[700]),
                    ),
                    Text(" Register",
                    style:GoogleFonts.lato(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Buttons(background: Colors.black87, foreground: Colors.white, text: "Login",widget: Login(),),
              ],
            ),
          ),
        ),
      ),

    );
  }
}