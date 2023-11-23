import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tickytacky/utils/colors.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomInputField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 1.3;
    return Container(
      height: 60,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: moonstone,
            offset: const Offset(8, 5),
          ),
        ],
      ),
      child: TextField(
        autocorrect: false,
        maxLines: 2,
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: babyPowder,
          enabled: true,
          hintText: hintText,
          hintStyle: GoogleFonts.bungee(
            color: vanilla,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
