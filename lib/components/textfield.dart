import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextfieldComponent extends StatelessWidget {
  final String hintText;
  const TextfieldComponent({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
                  decoration: InputDecoration(
                    hintText: this.hintText,
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
                  ),
                );
  }
}