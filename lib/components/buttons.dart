import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final Color background;
  final Color foreground;
  final String text;
  final Widget widget;

  const Buttons({super.key, required this.background, required this.foreground ,required this.text, required this.widget});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.only(left: 35,right: 35),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => this.widget));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: this.background,
                      foregroundColor: this.foreground,
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                    child: Text(
                      this.text,
                      style: GoogleFonts.roboto(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              );
  }
}