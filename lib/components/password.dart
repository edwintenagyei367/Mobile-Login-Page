import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordComponent extends StatefulWidget {
  final String hintText;
  const PasswordComponent({super.key, required this.hintText});

  @override
  State<PasswordComponent> createState() => _TextfieldComponentState();
}

class _TextfieldComponentState extends State<PasswordComponent> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
                  decoration: InputDecoration(
                    hintText: this.widget.hintText,
                    hintStyle: GoogleFonts.lato(fontSize: 15,color: Colors.grey[500]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(
                        color: Colors.grey
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                      borderRadius: BorderRadius.circular(18.0)
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off: Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: (){
                        setState((){
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  ),
                  obscureText: _obscureText,
                );
  }
}