import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tickytacky/utils/colors.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;

  const MenuButton({
    super.key,
    required this.onTap,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 1.3;
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: moonstone,
            offset: Offset(8, 5),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: const LinearBorder(),
          minimumSize: Size(width, 50),
          backgroundColor: vanilla,
          foregroundColor: atomicTangerine,
          textStyle: GoogleFonts.bungee(
            color: Colors.red,
            fontSize: 40,
          ),
        ),
        child: Text(buttonText),
      ),
    );
  }
}
